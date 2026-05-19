///|
pub struct PixelBuffer {
  data : Bytes
  width : Int
  height : Int
  row_bytes : Int
}

///|
pub fn PixelBuffer::PixelBuffer(
  width~ : Int,
  height~ : Int,
) -> PixelBuffer raise SkiaError {
  if width <= 0 || height <= 0 {
    raise InvalidPixelBufferSize(width~, height~)
  }
  if width > 0x7fff_ffff / 4 {
    raise InvalidPixelBufferSize(width~, height~)
  }
  let row_bytes = width * 4
  if height > 0x7fff_ffff / row_bytes {
    raise InvalidPixelBufferSize(width~, height~)
  }
  { data: Bytes::new(row_bytes * height), width, height, row_bytes }
}

///|
pub struct Surface {
  priv raw : @sys.Surface
  priv width : Int
  priv height : Int
}

///|
pub fn Surface::Surface(width~ : Int, height~ : Int) -> Surface raise SkiaError {
  if width <= 0 || height <= 0 || width > 0x7fff_ffff / 4 {
    raise InvalidSurfaceSize(width~, height~)
  }
  let row_bytes = width * 4
  let info = @sys.imageinfo_bgra8888_premul(width, height)
  let props = @sys.surfaceprops_new(0, 0)
  let raw = @sys.surface_new_raster(info, row_bytes.to_uint64(), props)
  @sys.surfaceprops_delete(props)
  if raw.is_null() {
    raise SurfaceCreateFailed(width~, height~)
  }
  { raw, width, height }
}

///|
fn Surface::to_sys(self : Self) -> @sys.Surface {
  self.raw
}

///|
pub fn Surface::canvas(self : Self) -> Canvas {
  Canvas::from_sys(@sys.surface_get_canvas(self.to_sys()))
}

///|
pub fn Surface::width(self : Self) -> Int {
  self.width
}

///|
pub fn Surface::height(self : Self) -> Int {
  self.height
}

///|
pub fn Surface::row_bytes(self : Self) -> Int {
  self.width * 4
}

///|
pub fn Surface::read_pixels(self : Self) -> PixelBuffer raise SkiaError {
  let buffer = PixelBuffer(width=self.width, height=self.height)
  self.read_pixels_into(buffer)
  buffer
}

///|
pub fn Surface::read_pixels_into(
  self : Self,
  buffer : PixelBuffer,
) -> Unit raise SkiaError {
  if buffer.width != self.width ||
    buffer.height != self.height ||
    buffer.row_bytes < self.row_bytes() ||
    buffer.data.length() / buffer.row_bytes < buffer.height {
    raise InvalidPixelBufferSize(width=buffer.width, height=buffer.height)
  }
  let info = @sys.imageinfo_bgra8888_premul(self.width, self.height)
  if !@sys.surface_read_pixels(
      self.raw,
      info,
      buffer.data,
      buffer.row_bytes.to_uint64(),
      0,
      0,
    ) {
    raise SurfaceReadPixelsFailed
  }
}

///|
pub fn Surface::write_png(self : Self, path : Bytes) -> Unit raise SkiaError {
  let status = @sys.skia_write_surface_png(self.to_sys(), path)
  if status != 0 {
    raise WritePngFailed(status~)
  }
}

///|
pub fn Surface::dispose(self : Self) -> Unit {
  @sys.surface_unref(self.raw)
}
