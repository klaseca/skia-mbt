///|
pub fn Canvas::save(self : Self) -> Int {
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
  antialias? : Bool = true,
) -> Unit {
  @sys.canvas_clip_rect_with_operation(self.raw, rect.to_sys(), 1, antialias)
}
