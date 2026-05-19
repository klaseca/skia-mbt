///|
pub(all) struct FontMetrics {
  ascent : Float
  descent : Float
  leading : Float
}

///|
pub struct Typeface {
  priv raw : @sys.Typeface
}

///|
fn Typeface::to_sys(self : Self) -> @sys.Typeface {
  self.raw
}

///|
pub fn Typeface::default() -> Typeface raise SkiaError {
  let fontmgr = @sys.fontmgr_create_default()
  if fontmgr.is_null() {
    raise TypefaceCreateFailed
  }
  defer @sys.fontmgr_unref(fontmgr)
  let style = @sys.fontstyle_new(400, 5, 0)
  if style.is_null() {
    raise TypefaceCreateFailed
  }
  defer @sys.fontstyle_delete(style)
  let raw = @sys.fontmgr_legacy_create_typeface(fontmgr, style)
  if raw.is_null() {
    raise TypefaceCreateFailed
  }
  { raw, }
}

///|
pub fn Typeface::dispose(self : Self) -> Unit {
  @sys.typeface_unref(self.raw)
}

///|
pub struct Font {
  priv raw : @sys.Font
}

///|
fn Font::to_sys(self : Self) -> @sys.Font {
  self.raw
}

///|
pub fn Font::Font(typeface : Typeface, size~ : Float) -> Font raise SkiaError {
  let raw = @sys.font_new_with_values(typeface.to_sys(), size, 1.0, 0.0)
  if raw.is_null() {
    raise FontCreateFailed
  }
  { raw, }
}

///|
pub fn Font::dispose(self : Self) -> Unit {
  @sys.font_delete(self.raw)
}

///|
pub fn Font::set_size(self : Self, size : Float) -> Unit {
  @sys.font_set_size(self.raw, size)
}

///|
pub fn Font::measure_text(self : Self, text : Bytes) -> Float {
  @sys.font_measure_text(self.raw, text, text.length().to_uint64(), 0)
}

///|
pub fn Font::metrics(self : Self) -> FontMetrics {
  let metrics = @sys.Fontmetrics(
    0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
  )
  ignore(@sys.font_get_metrics(self.raw, metrics))
  {
    ascent: metrics.fAscent(),
    descent: metrics.fDescent(),
    leading: metrics.fLeading(),
  }
}
