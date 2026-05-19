///|
fn main {
  let surface = try! @skia.Surface(width=640, height=360)
  defer surface.dispose()
  let canvas = surface.canvas()
  let paint = @skia.Paint()
  defer paint.dispose()
  let typeface = try! @skia.Typeface::default()
  defer typeface.dispose()
  let title_font = try! @skia.Font(typeface, size=42.0)
  defer title_font.dispose()
  let body_font = try! @skia.Font(typeface, size=20.0)
  defer body_font.dispose()

  canvas.clear(Color(a=255, r=249, g=250, b=252))
  paint.set_antialias(true)

  let panel = @skia.Rect(left=48.0, top=42.0, right=592.0, bottom=318.0)
  paint.set_style(Fill)
  paint.set_color(Color(a=255, r=32, g=38, b=46))
  canvas.draw_round_rect(panel, 28.0, 28.0, paint)

  let accent = @skia.Rect(left=80.0, top=76.0, right=332.0, bottom=284.0)
  paint.set_color(Color(a=255, r=54, g=178, b=162))
  canvas.draw_round_rect(accent, 22.0, 22.0, paint)

  paint.set_color(Color(a=255, r=255, g=206, b=84))
  canvas.draw_circle(430.0, 144.0, 58.0, paint)

  paint.set_style(Stroke)
  paint.set_stroke_width(14.0)
  paint.set_color(Color(a=255, r=238, g=242, b=247))
  canvas.draw_line(388.0, 232.0, 532.0, 232.0, paint)
  canvas.draw_line(460.0, 160.0, 460.0, 304.0, paint)

  paint.set_stroke_width(5.0)
  paint.set_color(Color(a=255, r=45, g=55, b=72))
  canvas.draw_line(96.0, 250.0, 300.0, 104.0, paint)

  let path = @skia.Path()
  defer path.dispose()
  try! path.parse_svg(b"M 374 288 L 430 250 L 486 288 Z")
  paint.set_style(Fill)
  paint.set_color(Color(a=255, r=238, g=242, b=247))
  canvas.draw_path(path, paint)

  paint.set_color(Color(a=255, r=238, g=242, b=247))
  canvas.draw_text(b"MoonBit + Skia", x=96.0, y=138.0, title_font, paint)
  paint.set_color(Color(a=255, r=32, g=38, b=46))
  canvas.draw_text(b"native text rendering", x=96.0, y=176.0, body_font, paint)

  try! surface.write_png(b"skia-drawing.png")
  println("Wrote skia-drawing.png")
}
