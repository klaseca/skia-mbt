///|
extern "C" fn imageinfo_bgra8888_premul_bytes(
  width : Int,
  height : Int,
) -> Bytes = "moonbit_skia_imageinfo_bgra8888_premul"

///|
pub fn imageinfo_bgra8888_premul(width : Int, height : Int) -> Imageinfo {
  { bytes: imageinfo_bgra8888_premul_bytes(width, height), }
}

///|
#borrow(info, pixels, props)
extern "C" fn canvas_new_from_raster_pointer_ffi(
  info : Bytes,
  pixels : Pointer,
  row_bytes : UInt64,
  props : Surfaceprops,
) -> Canvas = "moonbit_skia_canvas_new_from_raster_pointer"

///|
pub fn canvas_new_from_raster_pointer(
  info : Imageinfo,
  pixels : Pointer,
  row_bytes : UInt64,
  props : Surfaceprops,
) -> Canvas {
  canvas_new_from_raster_pointer_ffi(info.to_bytes(), pixels, row_bytes, props)
}

///|
#borrow(surface, path)
pub extern "C" fn skia_write_surface_png(
  surface : Surface,
  path : Bytes,
) -> Int = "moonbit_skia_write_surface_png"
