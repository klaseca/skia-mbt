///|
pub extern "c" fn d3d12_available() -> Bool = "moonbit_skia_d3d12_available"

///|
pub extern "c" fn d3d12_make_context(
  adapter : Pointer,
  device : Pointer,
  queue : Pointer,
) -> GrDirectContext = "moonbit_skia_d3d12_make_context"

///|
pub extern "c" fn d3d12_wrap_back_buffer(
  context : GrRecordingContext,
  resource : Pointer,
  width : Int32,
  height : Int32,
) -> Surface = "moonbit_skia_d3d12_wrap_back_buffer"

///|
#borrow(surface)
pub extern "c" fn d3d12_flush_for_present(
  context : GrDirectContext,
  surface : Surface,
) -> Bool = "moonbit_skia_d3d12_flush_for_present"
