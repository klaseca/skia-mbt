// Generated file. Do not edit by hand.

///|
pub extern "c" fn paint_new() -> Paint = "moonbit_skia_paint_new"

///|
#borrow(arg0)
pub extern "c" fn paint_clone(arg0 : Paint) -> Paint = "moonbit_skia_paint_clone"

///|
#borrow(arg0)
pub extern "c" fn paint_delete(arg0 : Paint) = "moonbit_skia_paint_delete"

///|
#borrow(arg0)
pub extern "c" fn paint_reset(arg0 : Paint) = "moonbit_skia_paint_reset"

///|
#borrow(arg0)
pub extern "c" fn paint_is_antialias(arg0 : Paint) -> Bool = "moonbit_skia_paint_is_antialias"

///|
#borrow(arg0)
pub extern "c" fn paint_set_antialias(arg0 : Paint, arg1 : Bool) = "moonbit_skia_paint_set_antialias"

///|
#borrow(arg0)
pub extern "c" fn paint_get_color(arg0 : Paint) -> UInt = "moonbit_skia_paint_get_color"

///|
#borrow(paint, color)
extern "c" fn paint_get_color4f_ffi(paint : Paint, color : Bytes) = "moonbit_skia_paint_get_color4f_ffi"

///|
pub fn paint_get_color4f(paint : Paint, color : Color4f) -> Unit {
  paint_get_color4f_ffi(paint, color.to_bytes())
}

///|
#borrow(arg0)
pub extern "c" fn paint_set_color(arg0 : Paint, arg1 : UInt) = "moonbit_skia_paint_set_color"

///|
#borrow(paint, color)
extern "c" fn paint_set_color4f_ffi(paint : Paint, color : Bytes, colorspace : Colorspace) = "moonbit_skia_paint_set_color4f_ffi"

///|
pub fn paint_set_color4f(paint : Paint, color : Color4f, colorspace : Colorspace) -> Unit {
  paint_set_color4f_ffi(paint, color.to_bytes(), colorspace)
}

///|
#borrow(arg0)
pub extern "c" fn paint_get_style(arg0 : Paint) -> Int = "moonbit_skia_paint_get_style"

///|
#borrow(arg0)
pub extern "c" fn paint_set_style(arg0 : Paint, arg1 : Int) = "moonbit_skia_paint_set_style"

///|
#borrow(arg0)
pub extern "c" fn paint_get_stroke_width(arg0 : Paint) -> Float = "moonbit_skia_paint_get_stroke_width"

///|
#borrow(arg0)
pub extern "c" fn paint_set_stroke_width(arg0 : Paint, width : Float) = "moonbit_skia_paint_set_stroke_width"

///|
#borrow(arg0)
pub extern "c" fn paint_get_stroke_miter(arg0 : Paint) -> Float = "moonbit_skia_paint_get_stroke_miter"

///|
#borrow(arg0)
pub extern "c" fn paint_set_stroke_miter(arg0 : Paint, miter : Float) = "moonbit_skia_paint_set_stroke_miter"

///|
#borrow(arg0)
pub extern "c" fn paint_get_stroke_cap(arg0 : Paint) -> Int = "moonbit_skia_paint_get_stroke_cap"

///|
#borrow(arg0)
pub extern "c" fn paint_set_stroke_cap(arg0 : Paint, arg1 : Int) = "moonbit_skia_paint_set_stroke_cap"

///|
#borrow(arg0)
pub extern "c" fn paint_get_stroke_join(arg0 : Paint) -> Int = "moonbit_skia_paint_get_stroke_join"

///|
#borrow(arg0)
pub extern "c" fn paint_set_stroke_join(arg0 : Paint, arg1 : Int) = "moonbit_skia_paint_set_stroke_join"

///|
#borrow(arg0)
pub extern "c" fn paint_set_shader(arg0 : Paint, arg1 : Shader) = "moonbit_skia_paint_set_shader"

///|
#borrow(arg0)
pub extern "c" fn paint_set_maskfilter(arg0 : Paint, arg1 : Maskfilter) = "moonbit_skia_paint_set_maskfilter"

///|
#borrow(arg0)
pub extern "c" fn paint_set_blendmode(arg0 : Paint, arg1 : Int) = "moonbit_skia_paint_set_blendmode"

///|
#borrow(paint)
pub extern "c" fn paint_set_blender(paint : Paint, blender : Blender) = "moonbit_skia_paint_set_blender"

///|
#borrow(arg0)
pub extern "c" fn paint_is_dither(arg0 : Paint) -> Bool = "moonbit_skia_paint_is_dither"

///|
#borrow(arg0)
pub extern "c" fn paint_set_dither(arg0 : Paint, arg1 : Bool) = "moonbit_skia_paint_set_dither"

///|
#borrow(arg0)
pub extern "c" fn paint_get_shader(arg0 : Paint) -> Shader = "moonbit_skia_paint_get_shader"

///|
#borrow(arg0)
pub extern "c" fn paint_get_maskfilter(arg0 : Paint) -> Maskfilter = "moonbit_skia_paint_get_maskfilter"

///|
#borrow(arg0)
pub extern "c" fn paint_set_colorfilter(arg0 : Paint, arg1 : Colorfilter) = "moonbit_skia_paint_set_colorfilter"

///|
#borrow(arg0)
pub extern "c" fn paint_get_colorfilter(arg0 : Paint) -> Colorfilter = "moonbit_skia_paint_get_colorfilter"

///|
#borrow(arg0)
pub extern "c" fn paint_set_imagefilter(arg0 : Paint, arg1 : Imagefilter) = "moonbit_skia_paint_set_imagefilter"

///|
#borrow(arg0)
pub extern "c" fn paint_get_imagefilter(arg0 : Paint) -> Imagefilter = "moonbit_skia_paint_get_imagefilter"

///|
#borrow(arg0)
pub extern "c" fn paint_get_blendmode(arg0 : Paint) -> Int = "moonbit_skia_paint_get_blendmode"

///|
#borrow(cpaint)
pub extern "c" fn paint_get_blender(cpaint : Paint) -> Blender = "moonbit_skia_paint_get_blender"

///|
#borrow(cpaint)
pub extern "c" fn paint_get_path_effect(cpaint : Paint) -> PathEffect = "moonbit_skia_paint_get_path_effect"

///|
#borrow(cpaint)
pub extern "c" fn paint_set_path_effect(cpaint : Paint, effect : PathEffect) = "moonbit_skia_paint_set_path_effect"

///|
#borrow(cpaint, src, cullRect, cmatrix)
extern "c" fn paint_get_fill_path_ffi(cpaint : Paint, src : Path, dst : Pathbuilder, cullRect : Bytes, cmatrix : Bytes) -> Bool = "moonbit_skia_paint_get_fill_path_ffi"

///|
pub fn paint_get_fill_path(cpaint : Paint, src : Path, dst : Pathbuilder, cullRect : Rect, cmatrix : Matrix) -> Bool {
  paint_get_fill_path_ffi(cpaint, src, dst, cullRect.to_bytes(), cmatrix.to_bytes())
}
