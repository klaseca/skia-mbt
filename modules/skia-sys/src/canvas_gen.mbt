// Generated file. Do not edit by hand.

///|
#borrow(ccanvas)
pub extern "c" fn canvas_destroy(ccanvas : Canvas) = "moonbit_skia_canvas_destroy"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_clear(ccanvas : Canvas, color : UInt) = "moonbit_skia_canvas_clear"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_discard(ccanvas : Canvas) = "moonbit_skia_canvas_discard"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_get_save_count(ccanvas : Canvas) -> Int = "moonbit_skia_canvas_get_save_count"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_restore_to_count(ccanvas : Canvas, saveCount : Int) = "moonbit_skia_canvas_restore_to_count"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_draw_color(ccanvas : Canvas, color : UInt, cmode : Int) = "moonbit_skia_canvas_draw_color"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_point(ccanvas : Canvas, x : Float, y : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_point"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_line(ccanvas : Canvas, x0 : Float, y0 : Float, x1 : Float, y1 : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_line"

///|
#borrow(ccanvas, text, cfont, cpaint)
pub extern "c" fn canvas_draw_simple_text(ccanvas : Canvas, text : Bytes, byte_length : UInt64, encoding : Int, x : Float, y : Float, cfont : Font, cpaint : Paint) = "moonbit_skia_canvas_draw_simple_text"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_text_blob(ccanvas : Canvas, text : Textblob, x : Float, y : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_text_blob"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_reset_matrix(ccanvas : Canvas) = "moonbit_skia_canvas_reset_matrix"

///|
#borrow(ccanvas, cmatrix)
extern "c" fn canvas_set_matrix_ffi(ccanvas : Canvas, cmatrix : Bytes) = "moonbit_skia_canvas_set_matrix_ffi"

///|
pub fn canvas_set_matrix(ccanvas : Canvas, cmatrix : Matrix44) -> Unit {
  canvas_set_matrix_ffi(ccanvas, cmatrix.to_bytes())
}

///|
#borrow(ccanvas, cmatrix)
extern "c" fn canvas_get_matrix_ffi(ccanvas : Canvas, cmatrix : Bytes) = "moonbit_skia_canvas_get_matrix_ffi"

///|
pub fn canvas_get_matrix(ccanvas : Canvas, cmatrix : Matrix44) -> Unit {
  canvas_get_matrix_ffi(ccanvas, cmatrix.to_bytes())
}

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_draw_round_rect_ffi(ccanvas : Canvas, crect : Bytes, rx : Float, ry : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_round_rect_ffi"

///|
pub fn canvas_draw_round_rect(ccanvas : Canvas, crect : Rect, rx : Float, ry : Float, cpaint : Paint) -> Unit {
  canvas_draw_round_rect_ffi(ccanvas, crect.to_bytes(), rx, ry, cpaint)
}

///|
#borrow(ccanvas, crect)
extern "c" fn canvas_clip_rect_with_operation_ffi(ccanvas : Canvas, crect : Bytes, op : Int, doAA : Bool) = "moonbit_skia_canvas_clip_rect_with_operation_ffi"

///|
pub fn canvas_clip_rect_with_operation(ccanvas : Canvas, crect : Rect, op : Int, doAA : Bool) -> Unit {
  canvas_clip_rect_with_operation_ffi(ccanvas, crect.to_bytes(), op, doAA)
}

///|
#borrow(ccanvas, cpath)
pub extern "c" fn canvas_clip_path_with_operation(ccanvas : Canvas, cpath : Path, op : Int, doAA : Bool) = "moonbit_skia_canvas_clip_path_with_operation"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_clip_rrect_with_operation(ccanvas : Canvas, crect : Rrect, op : Int, doAA : Bool) = "moonbit_skia_canvas_clip_rrect_with_operation"

///|
#borrow(ccanvas, cbounds)
extern "c" fn canvas_get_local_clip_bounds_ffi(ccanvas : Canvas, cbounds : Bytes) -> Bool = "moonbit_skia_canvas_get_local_clip_bounds_ffi"

///|
pub fn canvas_get_local_clip_bounds(ccanvas : Canvas, cbounds : Rect) -> Bool {
  canvas_get_local_clip_bounds_ffi(ccanvas, cbounds.to_bytes())
}

///|
#borrow(ccanvas, cbounds)
extern "c" fn canvas_get_device_clip_bounds_ffi(ccanvas : Canvas, cbounds : Bytes) -> Bool = "moonbit_skia_canvas_get_device_clip_bounds_ffi"

///|
pub fn canvas_get_device_clip_bounds(ccanvas : Canvas, cbounds : Irect) -> Bool {
  canvas_get_device_clip_bounds_ffi(ccanvas, cbounds.to_bytes())
}

///|
#borrow(ccanvas)
pub extern "c" fn canvas_save(ccanvas : Canvas) -> Int = "moonbit_skia_canvas_save"

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_save_layer_ffi(ccanvas : Canvas, crect : Bytes, cpaint : Paint) -> Int = "moonbit_skia_canvas_save_layer_ffi"

///|
pub fn canvas_save_layer(ccanvas : Canvas, crect : Rect, cpaint : Paint) -> Int {
  canvas_save_layer_ffi(ccanvas, crect.to_bytes(), cpaint)
}

///|
#borrow(ccanvas)
pub extern "c" fn canvas_restore(ccanvas : Canvas) = "moonbit_skia_canvas_restore"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_translate(ccanvas : Canvas, dx : Float, dy : Float) = "moonbit_skia_canvas_translate"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_scale(ccanvas : Canvas, sx : Float, sy : Float) = "moonbit_skia_canvas_scale"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_rotate_degrees(ccanvas : Canvas, degrees : Float) = "moonbit_skia_canvas_rotate_degrees"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_rotate_radians(ccanvas : Canvas, radians : Float) = "moonbit_skia_canvas_rotate_radians"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_skew(ccanvas : Canvas, sx : Float, sy : Float) = "moonbit_skia_canvas_skew"

///|
#borrow(ccanvas, cmatrix)
extern "c" fn canvas_concat_ffi(ccanvas : Canvas, cmatrix : Bytes) = "moonbit_skia_canvas_concat_ffi"

///|
pub fn canvas_concat(ccanvas : Canvas, cmatrix : Matrix44) -> Unit {
  canvas_concat_ffi(ccanvas, cmatrix.to_bytes())
}

///|
#borrow(ccanvas, crect)
extern "c" fn canvas_quick_reject_ffi(ccanvas : Canvas, crect : Bytes) -> Bool = "moonbit_skia_canvas_quick_reject_ffi"

///|
pub fn canvas_quick_reject(ccanvas : Canvas, crect : Rect) -> Bool {
  canvas_quick_reject_ffi(ccanvas, crect.to_bytes())
}

///|
#borrow(ccanvas)
pub extern "c" fn canvas_clip_region(ccanvas : Canvas, region : Region, op : Int) = "moonbit_skia_canvas_clip_region"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_paint(ccanvas : Canvas, cpaint : Paint) = "moonbit_skia_canvas_draw_paint"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_region(ccanvas : Canvas, cregion : Region, cpaint : Paint) = "moonbit_skia_canvas_draw_region"

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_draw_rect_ffi(ccanvas : Canvas, crect : Bytes, cpaint : Paint) = "moonbit_skia_canvas_draw_rect_ffi"

///|
pub fn canvas_draw_rect(ccanvas : Canvas, crect : Rect, cpaint : Paint) -> Unit {
  canvas_draw_rect_ffi(ccanvas, crect.to_bytes(), cpaint)
}

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_rrect(ccanvas : Canvas, crect : Rrect, cpaint : Paint) = "moonbit_skia_canvas_draw_rrect"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_circle(ccanvas : Canvas, cx : Float, cy : Float, rad : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_circle"

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_draw_oval_ffi(ccanvas : Canvas, crect : Bytes, cpaint : Paint) = "moonbit_skia_canvas_draw_oval_ffi"

///|
pub fn canvas_draw_oval(ccanvas : Canvas, crect : Rect, cpaint : Paint) -> Unit {
  canvas_draw_oval_ffi(ccanvas, crect.to_bytes(), cpaint)
}

///|
#borrow(ccanvas, cpath, cpaint)
pub extern "c" fn canvas_draw_path(ccanvas : Canvas, cpath : Path, cpaint : Paint) = "moonbit_skia_canvas_draw_path"

///|
#borrow(ccanvas, cmatrix, cpaint)
extern "c" fn canvas_draw_picture_ffi(ccanvas : Canvas, cpicture : Picture, cmatrix : Bytes, cpaint : Paint) = "moonbit_skia_canvas_draw_picture_ffi"

///|
pub fn canvas_draw_picture(ccanvas : Canvas, cpicture : Picture, cmatrix : Matrix, cpaint : Paint) -> Unit {
  canvas_draw_picture_ffi(ccanvas, cpicture, cmatrix.to_bytes(), cpaint)
}

///|
#borrow(ccanvas, cmatrix)
extern "c" fn canvas_draw_drawable_ffi(ccanvas : Canvas, cdrawable : Drawable, cmatrix : Bytes) = "moonbit_skia_canvas_draw_drawable_ffi"

///|
pub fn canvas_draw_drawable(ccanvas : Canvas, cdrawable : Drawable, cmatrix : Matrix) -> Unit {
  canvas_draw_drawable_ffi(ccanvas, cdrawable, cmatrix.to_bytes())
}

///|
pub extern "c" fn canvas_new_from_bitmap(bitmap : Bitmap) -> Canvas = "moonbit_skia_canvas_new_from_bitmap"

///|
#borrow(cinfo, pixels)
extern "c" fn canvas_new_from_raster_ffi(cinfo : Bytes, pixels : Bytes, rowBytes : UInt64, props : Surfaceprops) -> Canvas = "moonbit_skia_canvas_new_from_raster_ffi"

///|
pub fn canvas_new_from_raster(cinfo : Imageinfo, pixels : Bytes, rowBytes : UInt64, props : Surfaceprops) -> Canvas {
  canvas_new_from_raster_ffi(cinfo.to_bytes(), pixels, rowBytes, props)
}

///|
#borrow(t, rect, key)
extern "c" fn canvas_draw_annotation_ffi(t : Canvas, rect : Bytes, key : Bytes, value : Data) = "moonbit_skia_canvas_draw_annotation_ffi"

///|
pub fn canvas_draw_annotation(t : Canvas, rect : Rect, key : Bytes, value : Data) -> Unit {
  canvas_draw_annotation_ffi(t, rect.to_bytes(), key, value)
}

///|
#borrow(t, rect)
extern "c" fn canvas_draw_url_annotation_ffi(t : Canvas, rect : Bytes, value : Data) = "moonbit_skia_canvas_draw_url_annotation_ffi"

///|
pub fn canvas_draw_url_annotation(t : Canvas, rect : Rect, value : Data) -> Unit {
  canvas_draw_url_annotation_ffi(t, rect.to_bytes(), value)
}

///|
#borrow(t, point)
extern "c" fn canvas_draw_named_destination_annotation_ffi(t : Canvas, point : Bytes, value : Data) = "moonbit_skia_canvas_draw_named_destination_annotation_ffi"

///|
pub fn canvas_draw_named_destination_annotation(t : Canvas, point : Point, value : Data) -> Unit {
  canvas_draw_named_destination_annotation_ffi(t, point.to_bytes(), value)
}

///|
#borrow(t, rect)
extern "c" fn canvas_draw_link_destination_annotation_ffi(t : Canvas, rect : Bytes, value : Data) = "moonbit_skia_canvas_draw_link_destination_annotation_ffi"

///|
pub fn canvas_draw_link_destination_annotation(t : Canvas, rect : Rect, value : Data) -> Unit {
  canvas_draw_link_destination_annotation_ffi(t, rect.to_bytes(), value)
}

///|
#borrow(ccanvas, center, dst, paint)
extern "c" fn canvas_draw_image_nine_ffi(ccanvas : Canvas, image : Image, center : Bytes, dst : Bytes, mode : Int, paint : Paint) = "moonbit_skia_canvas_draw_image_nine_ffi"

///|
pub fn canvas_draw_image_nine(ccanvas : Canvas, image : Image, center : Irect, dst : Rect, mode : Int, paint : Paint) -> Unit {
  canvas_draw_image_nine_ffi(ccanvas, image, center.to_bytes(), dst.to_bytes(), mode, paint)
}

///|
#borrow(ccanvas, paint)
pub extern "c" fn canvas_draw_vertices(ccanvas : Canvas, vertices : Vertices, mode : Int, paint : Paint) = "moonbit_skia_canvas_draw_vertices"

///|
#borrow(ccanvas, oval, paint)
extern "c" fn canvas_draw_arc_ffi(ccanvas : Canvas, oval : Bytes, startAngle : Float, sweepAngle : Float, useCenter : Bool, paint : Paint) = "moonbit_skia_canvas_draw_arc_ffi"

///|
pub fn canvas_draw_arc(ccanvas : Canvas, oval : Rect, startAngle : Float, sweepAngle : Float, useCenter : Bool, paint : Paint) -> Unit {
  canvas_draw_arc_ffi(ccanvas, oval.to_bytes(), startAngle, sweepAngle, useCenter, paint)
}

///|
#borrow(ccanvas, paint)
pub extern "c" fn canvas_draw_drrect(ccanvas : Canvas, outer : Rrect, inner : Rrect, paint : Paint) = "moonbit_skia_canvas_draw_drrect"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_is_clip_empty(ccanvas : Canvas) -> Bool = "moonbit_skia_canvas_is_clip_empty"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_is_clip_rect(ccanvas : Canvas) -> Bool = "moonbit_skia_canvas_is_clip_rect"

///|
pub extern "c" fn nodraw_canvas_new(width : Int, height : Int) -> NodrawCanvas = "moonbit_skia_nodraw_canvas_new"

///|
pub extern "c" fn nodraw_canvas_destroy(t : NodrawCanvas) = "moonbit_skia_nodraw_canvas_destroy"

///|
pub extern "c" fn nway_canvas_new(width : Int, height : Int) -> NwayCanvas = "moonbit_skia_nway_canvas_new"

///|
pub extern "c" fn nway_canvas_destroy(t : NwayCanvas) = "moonbit_skia_nway_canvas_destroy"

///|
#borrow(canvas)
pub extern "c" fn nway_canvas_add_canvas(t : NwayCanvas, canvas : Canvas) = "moonbit_skia_nway_canvas_add_canvas"

///|
#borrow(canvas)
pub extern "c" fn nway_canvas_remove_canvas(t : NwayCanvas, canvas : Canvas) = "moonbit_skia_nway_canvas_remove_canvas"

///|
pub extern "c" fn nway_canvas_remove_all(t : NwayCanvas) = "moonbit_skia_nway_canvas_remove_all"

///|
#borrow(canvas)
pub extern "c" fn overdraw_canvas_new(canvas : Canvas) -> OverdrawCanvas = "moonbit_skia_overdraw_canvas_new"

///|
pub extern "c" fn overdraw_canvas_destroy(canvas : OverdrawCanvas) = "moonbit_skia_overdraw_canvas_destroy"

///|
#borrow(canvas)
pub extern "c" fn get_recording_context(canvas : Canvas) -> GrRecordingContext = "moonbit_skia_get_recording_context"

///|
#borrow(canvas)
pub extern "c" fn get_surface(canvas : Canvas) -> Surface = "moonbit_skia_get_surface"
