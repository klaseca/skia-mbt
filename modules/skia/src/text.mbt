///|
fn Canvas::to_sys(self : Self) -> @sys.Canvas {
  self.raw
}

///|
pub fn Canvas::draw_text(
  self : Self,
  text : Bytes,
  x~ : Float,
  y~ : Float,
  font : Font,
  paint : Paint,
) -> Unit {
  @sys.canvas_draw_simple_text(
    self.to_sys(),
    text,
    text.length().to_uint64(),
    0,
    x,
    y,
    font.to_sys(),
    paint.to_sys(),
  )
}
