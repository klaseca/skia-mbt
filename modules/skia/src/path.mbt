///|
pub fn Path::parse_svg(self : Self, svg : Bytes) -> Unit raise SkiaError {
  if !@sys.path_parse_svg_string(self.to_sys(), svg) {
    raise PathParseSvgFailed
  }
}
