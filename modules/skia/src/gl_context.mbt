///|
const GL_RGBA8 : UInt32 = 0x8058

///|
/// A Ganesh context for the current native OpenGL context. All operations and
/// disposal require that same OpenGL context to remain current on this thread.
pub struct GlContext {
  priv raw : Ref[@sys.GrDirectContext?]
}

///|
/// Use the host's loader when supplied. The native context must be current.
pub fn GlContext::GlContext(
  loader? : (Bytes) -> FuncRef[() -> Unit],
) -> GlContext raise SkiaError {
  let interface = match loader {
    Some(loader) => @sys.gr_glinterface_assemble_interface(loader)
    None => @sys.gr_glinterface_create_native_interface()
  }
  defer @sys.gr_glinterface_unref(interface)
  if interface.is_null() || !@sys.gr_glinterface_validate(interface) {
    raise GlInterfaceCreateFailed
  }
  let raw = @sys.gr_direct_context_make_gl(interface)
  if raw.is_null() {
    raise GlContextCreateFailed
  }
  { raw: Ref(Some(raw)), }
}

///|
pub fn GlContext::dispose(self : Self) -> Unit {
  if self.raw.val is Some(raw) {
    @sys.gr_direct_context_release_resources_and_abandon_context(raw)
    @sys.gr_recording_context_unref(raw.as_recording_context())
    self.raw.val = None
  }
}

///|
/// Release the context without issuing GL calls when its native context is
/// lost or cannot be made current. This is terminal, like dispose().
pub fn GlContext::abandon(self : Self) -> Unit {
  if self.raw.val is Some(raw) {
    @sys.gr_direct_context_abandon_context(raw)
    @sys.gr_recording_context_unref(raw.as_recording_context())
    self.raw.val = None
  }
}

///|
pub fn GlContext::flush(self : Self) -> Unit raise SkiaError {
  guard self.raw.val is Some(raw) else { raise GlContextAbandoned }
  if @sys.gr_direct_context_is_abandoned(raw) {
    raise GlContextAbandoned
  }
  @sys.gr_direct_context_flush(raw)
  if !@sys.gr_direct_context_submit(raw, false) {
    raise GlSubmitFailed
  }
}

///|
/// Wrap a window framebuffer without allocating or reading back CPU pixels.
/// Dispose surfaces before their context. Dimensions are physical pixels.
pub fn GlContext::surface(
  self : Self,
  width~ : Int32,
  height~ : Int32,
  framebuffer~ : UInt32 = 0,
  samples~ : Int32 = 0,
  stencil_bits~ : Int32 = 8,
) -> GlSurface raise SkiaError {
  guard width > 0 && height > 0 else {
    raise InvalidSurfaceSize(width~, height~)
  }
  guard self.raw.val is Some(context) else { raise GlContextAbandoned }
  if @sys.gr_direct_context_is_abandoned(context) {
    raise GlContextAbandoned
  }
  let limit = @sys.gr_recording_context_max_render_target_size(
    context.as_recording_context(),
  )
  if width > limit || height > limit {
    raise InvalidSurfaceSize(width~, height~)
  }
  let target = @sys.gr_backendrendertarget_new_gl(
    width,
    height,
    samples,
    stencil_bits,
    @sys.GrGlFramebufferinfo(framebuffer, GL_RGBA8, false),
  )
  errdefer @sys.gr_backendrendertarget_delete(target)
  if target.is_null() || !@sys.gr_backendrendertarget_is_valid(target) {
    raise SurfaceCreateFailed(width~, height~)
  }
  let props = @sys.surfaceprops_new(0, 0)
  defer @sys.surfaceprops_delete(props)
  let raw = @sys.surface_new_backend_render_target(
    context.as_recording_context(),
    target,
    @sys.BOTTOM_LEFT_GR_SURFACE_ORIGIN,
    @sys.RGBA_8888_SK_COLORTYPE,
    gl_null_colorspace(@sys.Pointer::null()),
    props,
  )
  if raw.is_null() {
    raise SurfaceCreateFailed(width~, height~)
  }
  { raw, target, context: self, width, height, }
}

///|
/// Keep the context and framebuffer descriptor alive until the surface is released.
pub struct GlSurface {
  priv raw : @sys.Surface
  priv target : @sys.GrBackendrendertarget
  priv context : GlContext
  priv width : Int32
  priv height : Int32
}

///|
pub fn GlSurface::canvas(self : Self) -> Canvas {
  Canvas::from_sys(@sys.surface_get_canvas(self.raw))
}

///|
pub fn GlSurface::dispose(self : Self) -> Unit {
  @sys.surface_unref(self.raw)
  @sys.gr_backendrendertarget_delete(self.target)
}

///|
/// Read back pixels for screenshots and validation; normal presentation does not
/// use this operation. The current OpenGL context must belong to this surface.
pub fn GlSurface::read_pixels(self : Self) -> PixelBuffer raise SkiaError {
  self.context.flush()
  let pixels = PixelBuffer(width=self.width, height=self.height)
  if !@sys.surface_read_pixels(
      self.raw,
      @sys.imageinfo_bgra8888_premul(self.width, self.height),
      pixels.data,
      pixels.row_bytes.to_uint64(),
      0,
      0,
    ) {
    raise SurfaceReadPixelsFailed
  }
  pixels
}

///|
fn gl_null_colorspace(pointer : @sys.Pointer) -> @sys.Colorspace = "%identity"
