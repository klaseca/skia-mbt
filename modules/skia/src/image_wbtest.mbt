///|
fn shared_raster_image() -> @sys.Image {
  let pixels = b"\x00\x00\xff\xff\x80\x00\x00\x80"
  let data = @sys.data_new_with_copy(pixels, pixels.length().to_uint64())
  @sys.image_new_raster_data(@sys.imageinfo_bgra8888_premul(2, 1), data, 8)
}

///|
test "a managed raster image retains its data and draws a cropped source" {
  // The local Data wrapper has been released before the image is drawn.
  let image = shared_raster_image()
  assert_false(image.is_null())
  let surface = Surface(width=4, height=4)
  defer surface.dispose()
  let canvas = surface.canvas()
  canvas.clear(Color(a=255, r=255, g=255, b=255))
  let paint = Paint()
  defer paint.dispose()
  canvas.draw_image(
    image,
    Rect(left=1.0, top=0.0, right=2.0, bottom=1.0),
    Rect(left=0.0, top=0.0, right=4.0, bottom=4.0),
    paint,
  )
  let pixels = surface.read_pixels().data
  // Skia's fast source constraint allows the linear filter to sample adjacent
  // source pixels at the cropped left edge. Interior/right pixels are blue.
  assert_eq(pixels[8:12].to_owned(), b"\xff\x7f\x7f\xff")
  assert_eq(pixels[60:].to_owned(), b"\xff\x7f\x7f\xff")
  ignore(canvas.save())
  canvas.clip_rect(Rect(left=0.0, top=0.0, right=2.0, bottom=2.0))
  assert_false(
    canvas.quick_reject(Rect(left=0.0, top=0.0, right=1.0, bottom=1.0)),
  )
  assert_true(
    canvas.quick_reject(Rect(left=3.0, top=3.0, right=4.0, bottom=4.0)),
  )
  canvas.restore()
}
