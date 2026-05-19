///|
test "pixel buffer rejects overflowing dimensions" {
  let result = try @skia.PixelBuffer(width=0x2000_0000, height=1) |> Ok catch {
    error => Err(error)
  }
  guard result is Err(InvalidPixelBufferSize(width=0x2000_0000, height=1)) else {
    fail("expected invalid pixel buffer size")
  }
}
