// Generated file. Do not edit by hand.

///|
pub extern "c" fn data_new_empty() -> Data = "moonbit_skia_data_new_empty"

///|
#borrow(src)
pub extern "c" fn data_new_with_copy(src : Bytes, length : UInt64) -> Data = "moonbit_skia_data_new_with_copy"

///|
pub extern "c" fn data_new_subset(src : Data, offset : UInt64, length : UInt64) -> Data = "moonbit_skia_data_new_subset"

///|
pub extern "c" fn data_ref(arg0 : Data) = "moonbit_skia_data_ref"

///|
pub extern "c" fn data_unref(arg0 : Data) = "moonbit_skia_data_unref"

///|
pub extern "c" fn data_get_size(arg0 : Data) -> UInt64 = "moonbit_skia_data_get_size"

///|
#borrow(path)
pub extern "c" fn data_new_from_file(path : Bytes) -> Data = "moonbit_skia_data_new_from_file"

///|
pub extern "c" fn data_new_from_stream(stream : Stream, length : UInt64) -> Data = "moonbit_skia_data_new_from_stream"

///|
pub extern "c" fn data_new_uninitialized(size : UInt64) -> Data = "moonbit_skia_data_new_uninitialized"
