// Generated file. Do not edit by hand.

///|
extern "c" fn value_little_endian_ffi() -> Bool = "moonbit_skia_value_little_endian"

///|
let value_little_endian : Bool = value_little_endian_ffi()

///|
priv trait NativeWord {
  fn from_i32(Int32) -> Self
  fn from_u32(UInt32) -> Self
}

///|
impl NativeWord for Int32 with fn from_i32(value) {
  value
}

///|
impl NativeWord for Int32 with fn from_u32(value) {
  value.reinterpret_as_int()
}

///|
impl NativeWord for UInt32 with fn from_i32(value) {
  value.reinterpret_as_uint()
}

///|
impl NativeWord for UInt32 with fn from_u32(value) {
  value
}

///|
// Two half-word shifts also discard the high word for 32-bit result types.
fn[T : Shl + BitOr] join_words(high : T, low : T) -> T {
  (high << 16 << 16) | low
}

///|
fn[T : NativeWord + Shl + BitOr] read_integer(
  bytes : Bytes,
  offset : Int32,
  size : Int32,
  signed : Bool,
  little_endian : Bool,
) -> T {
  let view = bytes.exact_view(start=offset, end=offset + size)
  match (little_endian, signed, view) {
    (true, true, [i8le(value)]) | (true, true, [i16le(value)]) | (true, true, [i32le(value)]) => NativeWord::from_i32(value)
    (true, true, [u32le(low), i32le(high)]) => join_words(NativeWord::from_i32(high), NativeWord::from_u32(low))
    (true, false, [u8le(value)]) | (true, false, [u16le(value)]) | (true, false, [u32le(value)]) => NativeWord::from_u32(value)
    (true, false, [u32le(low), u32le(high)]) => join_words(NativeWord::from_u32(high), NativeWord::from_u32(low))
    (false, true, [i8be(value)]) | (false, true, [i16be(value)]) | (false, true, [i32be(value)]) => NativeWord::from_i32(value)
    (false, true, [i32be(high), u32be(low)]) => join_words(NativeWord::from_i32(high), NativeWord::from_u32(low))
    (false, false, [u8be(value)]) | (false, false, [u16be(value)]) | (false, false, [u32be(value)]) => NativeWord::from_u32(value)
    (false, false, [u32be(high), u32be(low)]) => join_words(NativeWord::from_u32(high), NativeWord::from_u32(low))
    _ => abort("unsupported native scalar size")
  }
}

///|
fn value_read_float(bytes : Bytes, offset : Int32, size : Int32, little_endian : Bool) -> Float {
  let view = bytes.exact_view(start=offset, end=offset + size)
  match (little_endian, view) {
    (true, [u32le(value)]) => Float::reinterpret_from_uint(value)
    (false, [u32be(value)]) => Float::reinterpret_from_uint(value)
    _ => abort("unsupported native scalar size")
  }
}

///|
fn value_read_bool(bytes : Bytes, offset : Int32, size : Int32) -> Bool {
  guard size == 1 || size == 2 || size == 4 || size == 8 else {
    abort("unsupported native scalar size")
  }
  let view = bytes.exact_view(start=offset, end=offset + size)
  for index in 0..<size {
    if view[index] != 0 { return true }
  }
  false
}

///|
#borrow(bytes)
extern "c" fn value_read_pointer(bytes : Bytes, offset : Int32) -> Pointer = "moonbit_skia_value_read_pointer"

///|
#borrow(bytes)
extern "c" fn value_copy_bytes(bytes : Bytes, offset : Int32, size : Int32) -> Bytes = "moonbit_skia_value_copy_bytes"
