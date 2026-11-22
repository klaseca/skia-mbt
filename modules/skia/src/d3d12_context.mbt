///|
/// Ganesh on a host-owned D3D12 device and graphics queue.
pub struct D3d12Context {
  priv mut raw : @sys.GrDirectContext?
}

///|
/// The adapter, device and direct queue must belong to the same host.
pub fn D3d12Context::D3d12Context(
  adapter~ : @sys.Pointer,
  device~ : @sys.Pointer,
  queue~ : @sys.Pointer,
) -> D3d12Context raise SkiaError {
  guard @sys.d3d12_available() else { raise D3d12Unavailable }
  let raw = @sys.d3d12_make_context(adapter, device, queue)
  guard !raw.is_null() else { raise D3d12ContextCreateFailed }
  { raw: Some(raw), }
}

///|
/// Wrap an RGBA8 DXGI back buffer in PRESENT state. Dispose the returned
/// surface before the host replaces the back buffers.
pub fn D3d12Context::surface(
  self : Self,
  resource : @sys.Pointer,
  width~ : Int32,
  height~ : Int32,
) -> Surface raise SkiaError {
  guard self.raw is Some(raw) else { raise D3d12ContextAbandoned }
  guard width > 0 && height > 0 else {
    raise InvalidSurfaceSize(width~, height~)
  }
  let surface = @sys.d3d12_wrap_back_buffer(
    raw.as_recording_context(),
    resource,
    width,
    height,
  )
  guard !surface.is_null() else { raise SurfaceCreateFailed(width~, height~) }
  { raw: surface, width, height, }
}

///|
/// Submit drawing commands and transition a buffer from this context for DXGI Present.
pub fn D3d12Context::flush_for_present(
  self : Self,
  surface : Surface,
) -> Unit raise SkiaError {
  guard self.raw is Some(raw) else { raise D3d12ContextAbandoned }
  if !@sys.d3d12_flush_for_present(raw, surface.to_sys()) {
    raise D3d12SubmitFailed
  }
}

///|
/// Complete queued Skia work before releasing back-buffer surfaces.
pub fn D3d12Context::sync(self : Self) -> Unit raise SkiaError {
  guard self.raw is Some(raw) else { raise D3d12ContextAbandoned }
  @sys.gr_direct_context_flush(raw)
  if !@sys.gr_direct_context_submit(raw, true) ||
    @sys.gr_direct_context_is_abandoned(raw) {
    raise D3d12SubmitFailed
  }
}

///|
/// Release the Skia context after disposing its surfaces.
pub fn D3d12Context::dispose(self : Self) -> Unit {
  if self.raw is Some(raw) {
    self.raw = None
    @sys.gr_direct_context_release_resources_and_abandon_context(raw)
    @sys.gr_recording_context_unref(raw.as_recording_context())
  }
}
