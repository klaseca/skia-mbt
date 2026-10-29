///|
let linear_sampling : @sys.SamplingOptions = @sys.SamplingOptions(
  0,
  false,
  @sys.CubicResampler(0.0, 0.0),
  @sys.LINEAR_SK_FILTER_MODE,
  @sys.NONE_SK_MIPMAP_MODE,
)

///|
pub fn Canvas::save(self : Self) -> Int32 {
  @sys.canvas_save(self.raw)
}

///|
pub fn Canvas::restore(self : Self) -> Unit {
  @sys.canvas_restore(self.raw)
}

///|
pub fn Canvas::clip_rect(
  self : Self,
  rect : Rect,
  antialias~ : Bool = true,
) -> Unit {
  @sys.canvas_clip_rect_with_operation(self.raw, rect.to_sys(), 1, antialias)
}

///|
/// Draw a borrowed native image using linear sampling without mipmaps.
/// Filtering may sample neighboring pixels outside the source rectangle.
pub fn Canvas::draw_image(
  self : Self,
  image : @sys.Image,
  source : Rect,
  destination : Rect,
  paint : Paint,
) -> Unit {
  @sys.canvas_draw_image_rect(
    self.raw,
    image,
    source.to_sys(),
    destination.to_sys(),
    linear_sampling,
    paint.to_sys(),
  )
}

///|
/// Conservatively test whether a rectangle is fully outside the current clip.
pub fn Canvas::quick_reject(self : Self, rect : Rect) -> Bool {
  @sys.canvas_quick_reject(self.raw, rect.to_sys())
}
