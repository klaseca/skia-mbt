// Generated file. Do not edit by hand.

///|
#borrow(typeface)
pub extern "c" fn font_new_with_values(typeface : Typeface, size : Float, scaleX : Float, skewX : Float) -> Font = "moonbit_skia_font_new_with_values"

///|
#borrow(font)
pub extern "c" fn font_delete(font : Font) = "moonbit_skia_font_delete"

///|
#borrow(font)
pub extern "c" fn font_is_force_auto_hinting(font : Font) -> Bool = "moonbit_skia_font_is_force_auto_hinting"

///|
#borrow(font)
pub extern "c" fn font_set_force_auto_hinting(font : Font, value : Bool) = "moonbit_skia_font_set_force_auto_hinting"

///|
#borrow(font)
pub extern "c" fn font_is_embedded_bitmaps(font : Font) -> Bool = "moonbit_skia_font_is_embedded_bitmaps"

///|
#borrow(font)
pub extern "c" fn font_set_embedded_bitmaps(font : Font, value : Bool) = "moonbit_skia_font_set_embedded_bitmaps"

///|
#borrow(font)
pub extern "c" fn font_is_subpixel(font : Font) -> Bool = "moonbit_skia_font_is_subpixel"

///|
#borrow(font)
pub extern "c" fn font_set_subpixel(font : Font, value : Bool) = "moonbit_skia_font_set_subpixel"

///|
#borrow(font)
pub extern "c" fn font_is_linear_metrics(font : Font) -> Bool = "moonbit_skia_font_is_linear_metrics"

///|
#borrow(font)
pub extern "c" fn font_set_linear_metrics(font : Font, value : Bool) = "moonbit_skia_font_set_linear_metrics"

///|
#borrow(font)
pub extern "c" fn font_is_embolden(font : Font) -> Bool = "moonbit_skia_font_is_embolden"

///|
#borrow(font)
pub extern "c" fn font_set_embolden(font : Font, value : Bool) = "moonbit_skia_font_set_embolden"

///|
#borrow(font)
pub extern "c" fn font_is_baseline_snap(font : Font) -> Bool = "moonbit_skia_font_is_baseline_snap"

///|
#borrow(font)
pub extern "c" fn font_set_baseline_snap(font : Font, value : Bool) = "moonbit_skia_font_set_baseline_snap"

///|
#borrow(font)
pub extern "c" fn font_get_edging(font : Font) -> Int = "moonbit_skia_font_get_edging"

///|
#borrow(font)
pub extern "c" fn font_set_edging(font : Font, value : Int) = "moonbit_skia_font_set_edging"

///|
#borrow(font)
pub extern "c" fn font_get_hinting(font : Font) -> Int = "moonbit_skia_font_get_hinting"

///|
#borrow(font)
pub extern "c" fn font_set_hinting(font : Font, value : Int) = "moonbit_skia_font_set_hinting"

///|
#borrow(font)
pub extern "c" fn font_get_typeface(font : Font) -> Typeface = "moonbit_skia_font_get_typeface"

///|
#borrow(font, value)
pub extern "c" fn font_set_typeface(font : Font, value : Typeface) = "moonbit_skia_font_set_typeface"

///|
#borrow(font)
pub extern "c" fn font_get_size(font : Font) -> Float = "moonbit_skia_font_get_size"

///|
#borrow(font)
pub extern "c" fn font_set_size(font : Font, value : Float) = "moonbit_skia_font_set_size"

///|
#borrow(font)
pub extern "c" fn font_get_scale_x(font : Font) -> Float = "moonbit_skia_font_get_scale_x"

///|
#borrow(font)
pub extern "c" fn font_set_scale_x(font : Font, value : Float) = "moonbit_skia_font_set_scale_x"

///|
#borrow(font)
pub extern "c" fn font_get_skew_x(font : Font) -> Float = "moonbit_skia_font_get_skew_x"

///|
#borrow(font)
pub extern "c" fn font_set_skew_x(font : Font, value : Float) = "moonbit_skia_font_set_skew_x"

///|
#borrow(font)
pub extern "c" fn font_unichar_to_glyph(font : Font, uni : Int) -> UInt16 = "moonbit_skia_font_unichar_to_glyph"

///|
#borrow(font, text)
pub extern "c" fn font_measure_text(font : Font, text : Bytes, byteLength : UInt64, encoding : Int) -> Float = "moonbit_skia_font_measure_text"

///|
#borrow(font, text, bounds, paint, measuredWidth)
extern "c" fn font_measure_text_no_return_ffi(font : Font, text : Bytes, byteLength : UInt64, encoding : Int, bounds : Bytes, paint : Paint, measuredWidth : Ref[Float]) = "moonbit_skia_font_measure_text_no_return_ffi"

///|
pub fn font_measure_text_no_return(font : Font, text : Bytes, byteLength : UInt64, encoding : Int, bounds : Rect, paint : Paint, measuredWidth : Ref[Float]) -> Unit {
  font_measure_text_no_return_ffi(font, text, byteLength, encoding, bounds.to_bytes(), paint, measuredWidth)
}

///|
#borrow(font, text, measuredWidth, paint)
pub extern "c" fn font_break_text(font : Font, text : Bytes, byteLength : UInt64, encoding : Int, maxWidth : Float, measuredWidth : Ref[Float], paint : Paint) -> UInt64 = "moonbit_skia_font_break_text"

///|
#borrow(font, path)
pub extern "c" fn font_get_path(font : Font, glyph : UInt16, path : Path) -> Bool = "moonbit_skia_font_get_path"

///|
#borrow(font, metrics)
extern "c" fn font_get_metrics_ffi(font : Font, metrics : Bytes) -> Float = "moonbit_skia_font_get_metrics_ffi"

///|
pub fn font_get_metrics(font : Font, metrics : Fontmetrics) -> Float {
  font_get_metrics_ffi(font, metrics.to_bytes())
}

///|
#borrow(text, font, path)
pub extern "c" fn text_utils_get_path(text : Bytes, length : UInt64, encoding : Int, x : Float, y : Float, font : Font, path : Path) = "moonbit_skia_text_utils_get_path"
