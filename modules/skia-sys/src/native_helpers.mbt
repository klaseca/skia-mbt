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
#borrow(surface, path)
pub extern "C" fn skia_write_surface_png(
  surface : Surface,
  path : Bytes,
) -> Int = "moonbit_skia_write_surface_png"
