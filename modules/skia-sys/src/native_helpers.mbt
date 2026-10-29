///|
extern "C" fn imageinfo_bgra8888_premul_bytes(
  width : Int32,
  height : Int32,
) -> Bytes = "moonbit_skia_imageinfo_bgra8888_premul"

///|
pub fn imageinfo_bgra8888_premul(width : Int32, height : Int32) -> Imageinfo {
  { bytes: imageinfo_bgra8888_premul_bytes(width, height), offset: 0, }
}

///|
#borrow(info, pixels, props)
extern "C" fn canvas_new_from_raster_pointer_ffi(
  info : Bytes,
  info_offset : Int32,
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
  canvas_new_from_raster_pointer_ffi(
    info.bytes,
    info.offset,
    pixels,
    row_bytes,
    props,
  )
}

///|
#borrow(surface, path)
pub extern "C" fn skia_write_surface_png(
  surface : Surface,
  path : Bytes,
) -> Int32 = "moonbit_skia_write_surface_png"
