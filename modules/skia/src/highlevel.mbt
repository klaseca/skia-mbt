///|
pub(all) enum PaintStyle {
  Fill
  Stroke
}

///|
fn PaintStyle::to_sys(self : Self) -> Int {
  match self {
    Fill => 0
    Stroke => 1
  }
}

///|
pub struct Color {
  a : Byte
  r : Byte
  g : Byte
  b : Byte
}

///|
fn Color::to_sys(self : Self) -> UInt {
  (self.a.to_uint() << 24) |
  (self.r.to_uint() << 16) |
  (self.g.to_uint() << 8) |
  self.b.to_uint()
}

///|
pub fn Color::Color(a~ : Byte, r~ : Byte, g~ : Byte, b~ : Byte) -> Color {
  { a, r, g, b, }
}

///|
pub struct Rect {
  left : Float
  top : Float
  right : Float
  bottom : Float
}

///|
fn Rect::to_sys(self : Self) -> @sys.Rect {
  Rect(self.left, self.top, self.right, self.bottom)
}

///|
pub fn Rect::Rect(
  left~ : Float,
  top~ : Float,
  right~ : Float,
  bottom~ : Float,
) -> Rect {
  { left, top, right, bottom, }
}

///|
pub struct Canvas {
  priv raw : @sys.Canvas
}

///|
pub fn Canvas::from_sys(raw : @sys.Canvas) -> Canvas {
  { raw, }
}

///|
pub fn Canvas::clear(self : Self, color : Color) -> Unit {
  @sys.canvas_clear(self.raw, color.to_sys())
}

///|
pub fn Canvas::draw_round_rect(
  self : Self,
  rect : Rect,
  rx : Float,
  ry : Float,
  paint : Paint,
) -> Unit {
  @sys.canvas_draw_round_rect(self.raw, rect.to_sys(), rx, ry, paint.to_sys())
}

///|
pub fn Canvas::draw_circle(
  self : Self,
  cx : Float,
  cy : Float,
  radius : Float,
  paint : Paint,
) -> Unit {
  @sys.canvas_draw_circle(self.raw, cx, cy, radius, paint.to_sys())
}

///|
pub fn Canvas::draw_line(
  self : Self,
  x0 : Float,
  y0 : Float,
  x1 : Float,
  y1 : Float,
  paint : Paint,
) -> Unit {
  @sys.canvas_draw_line(self.raw, x0, y0, x1, y1, paint.to_sys())
}

///|
pub fn Canvas::draw_path(self : Self, path : Path, paint : Paint) -> Unit {
  @sys.canvas_draw_path(self.raw, path.to_sys(), paint.to_sys())
}

///|
pub struct Path {
  priv raw : @sys.Path
}

///|
fn Path::to_sys(self : Self) -> @sys.Path {
  self.raw
}

///|
pub fn Path::Path() -> Path {
  { raw: @sys.path_new(), }
}

///|
pub fn Path::dispose(self : Self) -> Unit {
  @sys.path_delete(self.raw)
}

///|
pub fn Path::reset(self : Self) -> Unit {
  @sys.path_reset(self.raw)
}

///|
pub fn Path::rewind(self : Self) -> Unit {
  @sys.path_rewind(self.raw)
}

///|
pub struct Paint {
  priv raw : @sys.Paint
}

///|
fn Paint::to_sys(self : Self) -> @sys.Paint {
  self.raw
}

///|
pub fn Paint::Paint() -> Paint {
  { raw: @sys.paint_new(), }
}

///|
pub fn Paint::dispose(self : Self) -> Unit {
  @sys.paint_delete(self.raw)
}

///|
pub fn Paint::set_antialias(self : Self, enabled : Bool) -> Unit {
  @sys.paint_set_antialias(self.raw, enabled)
}

///|
pub fn Paint::set_color(self : Self, color : Color) -> Unit {
  @sys.paint_set_color(self.raw, color.to_sys())
}

///|
pub fn Paint::set_style(self : Self, style : PaintStyle) -> Unit {
  @sys.paint_set_style(self.raw, style.to_sys())
}

///|
pub fn Paint::set_stroke_width(self : Self, width : Float) -> Unit {
  @sys.paint_set_stroke_width(self.raw, width)
}
