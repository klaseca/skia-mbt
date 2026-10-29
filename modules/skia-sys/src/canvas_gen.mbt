// Generated file. Do not edit by hand.

///|
#borrow(ccanvas)
pub extern "c" fn canvas_destroy(ccanvas : Canvas) = "moonbit_skia_canvas_destroy"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_clear(ccanvas : Canvas, color : UInt32) = "moonbit_skia_canvas_clear"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_discard(ccanvas : Canvas) = "moonbit_skia_canvas_discard"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_get_save_count(ccanvas : Canvas) -> Int32 = "moonbit_skia_canvas_get_save_count"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_restore_to_count(ccanvas : Canvas, saveCount : Int32) = "moonbit_skia_canvas_restore_to_count"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_draw_color(ccanvas : Canvas, color : UInt32, cmode : Int32) = "moonbit_skia_canvas_draw_color"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_point(ccanvas : Canvas, x : Float, y : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_point"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_line(ccanvas : Canvas, x0 : Float, y0 : Float, x1 : Float, y1 : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_line"

///|
#borrow(ccanvas, text, cfont, cpaint)
pub extern "c" fn canvas_draw_simple_text(ccanvas : Canvas, text : Bytes, byte_length : UInt64, encoding : Int32, x : Float, y : Float, cfont : Font, cpaint : Paint) = "moonbit_skia_canvas_draw_simple_text"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_text_blob(ccanvas : Canvas, text : Textblob, x : Float, y : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_text_blob"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_reset_matrix(ccanvas : Canvas) = "moonbit_skia_canvas_reset_matrix"

///|
#borrow(ccanvas, cmatrix)
extern "c" fn canvas_set_matrix_ffi(ccanvas : Canvas, cmatrix : Bytes, cmatrix_offset : Int32) = "moonbit_skia_canvas_set_matrix_ffi"

///|
pub fn canvas_set_matrix(ccanvas : Canvas, cmatrix : Matrix44) -> Unit {
  canvas_set_matrix_ffi(ccanvas, cmatrix.bytes, cmatrix.offset)
}

///|
#borrow(ccanvas, cmatrix)
extern "c" fn canvas_get_matrix_ffi(ccanvas : Canvas, cmatrix : Bytes, cmatrix_offset : Int32) = "moonbit_skia_canvas_get_matrix_ffi"

///|
pub fn canvas_get_matrix(ccanvas : Canvas, cmatrix : Matrix44) -> Unit {
  canvas_get_matrix_ffi(ccanvas, cmatrix.bytes, cmatrix.offset)
}

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_draw_round_rect_ffi(ccanvas : Canvas, crect : Bytes, crect_offset : Int32, rx : Float, ry : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_round_rect_ffi"

///|
pub fn canvas_draw_round_rect(ccanvas : Canvas, crect : Rect, rx : Float, ry : Float, cpaint : Paint) -> Unit {
  canvas_draw_round_rect_ffi(ccanvas, crect.bytes, crect.offset, rx, ry, cpaint)
}

///|
#borrow(ccanvas, crect)
extern "c" fn canvas_clip_rect_with_operation_ffi(ccanvas : Canvas, crect : Bytes, crect_offset : Int32, op : Int32, doAA : Bool) = "moonbit_skia_canvas_clip_rect_with_operation_ffi"

///|
pub fn canvas_clip_rect_with_operation(ccanvas : Canvas, crect : Rect, op : Int32, doAA : Bool) -> Unit {
  canvas_clip_rect_with_operation_ffi(ccanvas, crect.bytes, crect.offset, op, doAA)
}

///|
#borrow(ccanvas, cpath)
pub extern "c" fn canvas_clip_path_with_operation(ccanvas : Canvas, cpath : Path, op : Int32, doAA : Bool) = "moonbit_skia_canvas_clip_path_with_operation"

///|
#borrow(ccanvas)
pub extern "c" fn canvas_clip_rrect_with_operation(ccanvas : Canvas, crect : Rrect, op : Int32, doAA : Bool) = "moonbit_skia_canvas_clip_rrect_with_operation"

///|
#borrow(ccanvas, cbounds)
extern "c" fn canvas_get_local_clip_bounds_ffi(ccanvas : Canvas, cbounds : Bytes, cbounds_offset : Int32) -> Bool = "moonbit_skia_canvas_get_local_clip_bounds_ffi"

///|
pub fn canvas_get_local_clip_bounds(ccanvas : Canvas, cbounds : Rect) -> Bool {
  canvas_get_local_clip_bounds_ffi(ccanvas, cbounds.bytes, cbounds.offset)
}

///|
#borrow(ccanvas, cbounds)
extern "c" fn canvas_get_device_clip_bounds_ffi(ccanvas : Canvas, cbounds : Bytes, cbounds_offset : Int32) -> Bool = "moonbit_skia_canvas_get_device_clip_bounds_ffi"

///|
pub fn canvas_get_device_clip_bounds(ccanvas : Canvas, cbounds : Irect) -> Bool {
  canvas_get_device_clip_bounds_ffi(ccanvas, cbounds.bytes, cbounds.offset)
}

///|
#borrow(ccanvas)
pub extern "c" fn canvas_save(ccanvas : Canvas) -> Int32 = "moonbit_skia_canvas_save"

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_save_layer_ffi(ccanvas : Canvas, crect : Bytes, crect_offset : Int32, cpaint : Paint) -> Int32 = "moonbit_skia_canvas_save_layer_ffi"

///|
pub fn canvas_save_layer(ccanvas : Canvas, crect : Rect, cpaint : Paint) -> Int32 {
  canvas_save_layer_ffi(ccanvas, crect.bytes, crect.offset, cpaint)
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
extern "c" fn canvas_concat_ffi(ccanvas : Canvas, cmatrix : Bytes, cmatrix_offset : Int32) = "moonbit_skia_canvas_concat_ffi"

///|
pub fn canvas_concat(ccanvas : Canvas, cmatrix : Matrix44) -> Unit {
  canvas_concat_ffi(ccanvas, cmatrix.bytes, cmatrix.offset)
}

///|
#borrow(ccanvas, crect)
extern "c" fn canvas_quick_reject_ffi(ccanvas : Canvas, crect : Bytes, crect_offset : Int32) -> Bool = "moonbit_skia_canvas_quick_reject_ffi"

///|
pub fn canvas_quick_reject(ccanvas : Canvas, crect : Rect) -> Bool {
  canvas_quick_reject_ffi(ccanvas, crect.bytes, crect.offset)
}

///|
#borrow(ccanvas)
pub extern "c" fn canvas_clip_region(ccanvas : Canvas, region : Region, op : Int32) = "moonbit_skia_canvas_clip_region"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_paint(ccanvas : Canvas, cpaint : Paint) = "moonbit_skia_canvas_draw_paint"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_region(ccanvas : Canvas, cregion : Region, cpaint : Paint) = "moonbit_skia_canvas_draw_region"

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_draw_rect_ffi(ccanvas : Canvas, crect : Bytes, crect_offset : Int32, cpaint : Paint) = "moonbit_skia_canvas_draw_rect_ffi"

///|
pub fn canvas_draw_rect(ccanvas : Canvas, crect : Rect, cpaint : Paint) -> Unit {
  canvas_draw_rect_ffi(ccanvas, crect.bytes, crect.offset, cpaint)
}

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_rrect(ccanvas : Canvas, crect : Rrect, cpaint : Paint) = "moonbit_skia_canvas_draw_rrect"

///|
#borrow(ccanvas, cpaint)
pub extern "c" fn canvas_draw_circle(ccanvas : Canvas, cx : Float, cy : Float, rad : Float, cpaint : Paint) = "moonbit_skia_canvas_draw_circle"

///|
#borrow(ccanvas, crect, cpaint)
extern "c" fn canvas_draw_oval_ffi(ccanvas : Canvas, crect : Bytes, crect_offset : Int32, cpaint : Paint) = "moonbit_skia_canvas_draw_oval_ffi"

///|
pub fn canvas_draw_oval(ccanvas : Canvas, crect : Rect, cpaint : Paint) -> Unit {
  canvas_draw_oval_ffi(ccanvas, crect.bytes, crect.offset, cpaint)
}

///|
#borrow(ccanvas, cpath, cpaint)
pub extern "c" fn canvas_draw_path(ccanvas : Canvas, cpath : Path, cpaint : Paint) = "moonbit_skia_canvas_draw_path"

///|
#borrow(ccanvas, cimage, sampling, cpaint)
extern "c" fn canvas_draw_image_ffi(ccanvas : Canvas, cimage : Image, x : Float, y : Float, sampling : Bytes, sampling_offset : Int32, cpaint : Paint) = "moonbit_skia_canvas_draw_image_ffi"

///|
pub fn canvas_draw_image(ccanvas : Canvas, cimage : Image, x : Float, y : Float, sampling : SamplingOptions, cpaint : Paint) -> Unit {
  canvas_draw_image_ffi(ccanvas, cimage, x, y, sampling.bytes, sampling.offset, cpaint)
}

///|
#borrow(ccanvas, cimage, csrcR, cdstR, sampling, cpaint)
extern "c" fn canvas_draw_image_rect_ffi(ccanvas : Canvas, cimage : Image, csrcR : Bytes, csrcR_offset : Int32, cdstR : Bytes, cdstR_offset : Int32, sampling : Bytes, sampling_offset : Int32, cpaint : Paint) = "moonbit_skia_canvas_draw_image_rect_ffi"

///|
pub fn canvas_draw_image_rect(ccanvas : Canvas, cimage : Image, csrcR : Rect, cdstR : Rect, sampling : SamplingOptions, cpaint : Paint) -> Unit {
  canvas_draw_image_rect_ffi(ccanvas, cimage, csrcR.bytes, csrcR.offset, cdstR.bytes, cdstR.offset, sampling.bytes, sampling.offset, cpaint)
}

///|
#borrow(ccanvas, cmatrix, cpaint)
extern "c" fn canvas_draw_picture_ffi(ccanvas : Canvas, cpicture : Picture, cmatrix : Bytes, cmatrix_offset : Int32, cpaint : Paint) = "moonbit_skia_canvas_draw_picture_ffi"

///|
pub fn canvas_draw_picture(ccanvas : Canvas, cpicture : Picture, cmatrix : Matrix, cpaint : Paint) -> Unit {
  canvas_draw_picture_ffi(ccanvas, cpicture, cmatrix.bytes, cmatrix.offset, cpaint)
}

///|
#borrow(ccanvas, cmatrix)
extern "c" fn canvas_draw_drawable_ffi(ccanvas : Canvas, cdrawable : Drawable, cmatrix : Bytes, cmatrix_offset : Int32) = "moonbit_skia_canvas_draw_drawable_ffi"

///|
pub fn canvas_draw_drawable(ccanvas : Canvas, cdrawable : Drawable, cmatrix : Matrix) -> Unit {
  canvas_draw_drawable_ffi(ccanvas, cdrawable, cmatrix.bytes, cmatrix.offset)
}

///|
pub extern "c" fn canvas_new_from_bitmap(bitmap : Bitmap) -> Canvas = "moonbit_skia_canvas_new_from_bitmap"

///|
#borrow(cinfo, pixels)
extern "c" fn canvas_new_from_raster_ffi(cinfo : Bytes, cinfo_offset : Int32, pixels : Bytes, rowBytes : UInt64, props : Surfaceprops) -> Canvas = "moonbit_skia_canvas_new_from_raster_ffi"

///|
pub fn canvas_new_from_raster(cinfo : Imageinfo, pixels : Bytes, rowBytes : UInt64, props : Surfaceprops) -> Canvas {
  canvas_new_from_raster_ffi(cinfo.bytes, cinfo.offset, pixels, rowBytes, props)
}

///|
#borrow(t, rect, key, value)
extern "c" fn canvas_draw_annotation_ffi(t : Canvas, rect : Bytes, rect_offset : Int32, key : Bytes, value : Data) = "moonbit_skia_canvas_draw_annotation_ffi"

///|
pub fn canvas_draw_annotation(t : Canvas, rect : Rect, key : Bytes, value : Data) -> Unit {
  canvas_draw_annotation_ffi(t, rect.bytes, rect.offset, key, value)
}

///|
#borrow(t, rect, value)
extern "c" fn canvas_draw_url_annotation_ffi(t : Canvas, rect : Bytes, rect_offset : Int32, value : Data) = "moonbit_skia_canvas_draw_url_annotation_ffi"

///|
pub fn canvas_draw_url_annotation(t : Canvas, rect : Rect, value : Data) -> Unit {
  canvas_draw_url_annotation_ffi(t, rect.bytes, rect.offset, value)
}

///|
#borrow(t, point, value)
extern "c" fn canvas_draw_named_destination_annotation_ffi(t : Canvas, point : Bytes, point_offset : Int32, value : Data) = "moonbit_skia_canvas_draw_named_destination_annotation_ffi"

///|
pub fn canvas_draw_named_destination_annotation(t : Canvas, point : Point, value : Data) -> Unit {
  canvas_draw_named_destination_annotation_ffi(t, point.bytes, point.offset, value)
}

///|
#borrow(t, rect, value)
extern "c" fn canvas_draw_link_destination_annotation_ffi(t : Canvas, rect : Bytes, rect_offset : Int32, value : Data) = "moonbit_skia_canvas_draw_link_destination_annotation_ffi"

///|
pub fn canvas_draw_link_destination_annotation(t : Canvas, rect : Rect, value : Data) -> Unit {
  canvas_draw_link_destination_annotation_ffi(t, rect.bytes, rect.offset, value)
}

///|
#borrow(ccanvas, image, center, dst, paint)
extern "c" fn canvas_draw_image_nine_ffi(ccanvas : Canvas, image : Image, center : Bytes, center_offset : Int32, dst : Bytes, dst_offset : Int32, mode : Int32, paint : Paint) = "moonbit_skia_canvas_draw_image_nine_ffi"

///|
pub fn canvas_draw_image_nine(ccanvas : Canvas, image : Image, center : Irect, dst : Rect, mode : Int32, paint : Paint) -> Unit {
  canvas_draw_image_nine_ffi(ccanvas, image, center.bytes, center.offset, dst.bytes, dst.offset, mode, paint)
}

///|
#borrow(ccanvas, paint)
pub extern "c" fn canvas_draw_vertices(ccanvas : Canvas, vertices : Vertices, mode : Int32, paint : Paint) = "moonbit_skia_canvas_draw_vertices"

///|
#borrow(ccanvas, oval, paint)
extern "c" fn canvas_draw_arc_ffi(ccanvas : Canvas, oval : Bytes, oval_offset : Int32, startAngle : Float, sweepAngle : Float, useCenter : Bool, paint : Paint) = "moonbit_skia_canvas_draw_arc_ffi"

///|
pub fn canvas_draw_arc(ccanvas : Canvas, oval : Rect, startAngle : Float, sweepAngle : Float, useCenter : Bool, paint : Paint) -> Unit {
  canvas_draw_arc_ffi(ccanvas, oval.bytes, oval.offset, startAngle, sweepAngle, useCenter, paint)
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
pub extern "c" fn nodraw_canvas_new(width : Int32, height : Int32) -> NodrawCanvas = "moonbit_skia_nodraw_canvas_new"

///|
pub extern "c" fn nodraw_canvas_destroy(t : NodrawCanvas) = "moonbit_skia_nodraw_canvas_destroy"

///|
pub extern "c" fn nway_canvas_new(width : Int32, height : Int32) -> NwayCanvas = "moonbit_skia_nway_canvas_new"

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
