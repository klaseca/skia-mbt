// Generated file. Do not edit by hand.

///|
pub extern "c" fn surface_new_null(width : Int32, height : Int32) -> Surface = "moonbit_skia_surface_new_null"

///|
#borrow(arg0)
extern "c" fn surface_new_raster_ffi(arg0 : Bytes, arg0_offset : Int32, rowBytes : UInt64, arg2 : Surfaceprops) -> Surface = "moonbit_skia_surface_new_raster_ffi"

///|
pub fn surface_new_raster(arg0 : Imageinfo, rowBytes : UInt64, arg2 : Surfaceprops) -> Surface {
  surface_new_raster_ffi(arg0.bytes, arg0.offset, rowBytes, arg2)
}

///|
pub extern "c" fn surface_new_backend_texture(context : GrRecordingContext, texture : GrBackendtexture, origin : Int32, samples : Int32, colorType : Int32, colorspace : Colorspace, props : Surfaceprops) -> Surface = "moonbit_skia_surface_new_backend_texture"

///|
pub extern "c" fn surface_new_backend_render_target(context : GrRecordingContext, target : GrBackendrendertarget, origin : Int32, colorType : Int32, colorspace : Colorspace, props : Surfaceprops) -> Surface = "moonbit_skia_surface_new_backend_render_target"

///|
#borrow(cinfo)
extern "c" fn surface_new_render_target_ffi(context : GrRecordingContext, budgeted : Bool, cinfo : Bytes, cinfo_offset : Int32, sampleCount : Int32, origin : Int32, props : Surfaceprops, shouldCreateWithMips : Bool) -> Surface = "moonbit_skia_surface_new_render_target_ffi"

///|
pub fn surface_new_render_target(context : GrRecordingContext, budgeted : Bool, cinfo : Imageinfo, sampleCount : Int32, origin : Int32, props : Surfaceprops, shouldCreateWithMips : Bool) -> Surface {
  surface_new_render_target_ffi(context, budgeted, cinfo.bytes, cinfo.offset, sampleCount, origin, props, shouldCreateWithMips)
}

///|
#borrow(arg0)
pub extern "c" fn surface_unref(arg0 : Surface) = "moonbit_skia_surface_unref"

///|
#borrow(arg0)
pub extern "c" fn surface_get_canvas(arg0 : Surface) -> Canvas = "moonbit_skia_surface_get_canvas"

///|
#borrow(arg0)
pub extern "c" fn surface_new_image_snapshot(arg0 : Surface) -> Image = "moonbit_skia_surface_new_image_snapshot"

///|
#borrow(surface, bounds)
extern "c" fn surface_new_image_snapshot_with_crop_ffi(surface : Surface, bounds : Bytes, bounds_offset : Int32) -> Image = "moonbit_skia_surface_new_image_snapshot_with_crop_ffi"

///|
pub fn surface_new_image_snapshot_with_crop(surface : Surface, bounds : Irect) -> Image {
  surface_new_image_snapshot_with_crop_ffi(surface, bounds.bytes, bounds.offset)
}

///|
#borrow(surface, canvas, paint)
pub extern "c" fn surface_draw(surface : Surface, canvas : Canvas, x : Float, y : Float, paint : Paint) = "moonbit_skia_surface_draw"

///|
#borrow(surface, canvas, sampling, paint)
extern "c" fn surface_draw_with_sampling_ffi(surface : Surface, canvas : Canvas, x : Float, y : Float, sampling : Bytes, sampling_offset : Int32, paint : Paint) = "moonbit_skia_surface_draw_with_sampling_ffi"

///|
pub fn surface_draw_with_sampling(surface : Surface, canvas : Canvas, x : Float, y : Float, sampling : SamplingOptions, paint : Paint) -> Unit {
  surface_draw_with_sampling_ffi(surface, canvas, x, y, sampling.bytes, sampling.offset, paint)
}

///|
#borrow(surface)
pub extern "c" fn surface_peek_pixels(surface : Surface, pixmap : Pixmap) -> Bool = "moonbit_skia_surface_peek_pixels"

///|
#borrow(surface, dstInfo, dstPixels)
extern "c" fn surface_read_pixels_ffi(surface : Surface, dstInfo : Bytes, dstInfo_offset : Int32, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int32, srcY : Int32) -> Bool = "moonbit_skia_surface_read_pixels_ffi"

///|
pub fn surface_read_pixels(surface : Surface, dstInfo : Imageinfo, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int32, srcY : Int32) -> Bool {
  surface_read_pixels_ffi(surface, dstInfo.bytes, dstInfo.offset, dstPixels, dstRowBytes, srcX, srcY)
}

///|
#borrow(surface)
pub extern "c" fn surface_get_props(surface : Surface) -> Surfaceprops = "moonbit_skia_surface_get_props"

///|
#borrow(surface)
pub extern "c" fn surface_get_recording_context(surface : Surface) -> GrRecordingContext = "moonbit_skia_surface_get_recording_context"

///|
pub extern "c" fn surfaceprops_new(flags : UInt32, geometry : Int32) -> Surfaceprops = "moonbit_skia_surfaceprops_new"

///|
pub extern "c" fn surfaceprops_delete(props : Surfaceprops) = "moonbit_skia_surfaceprops_delete"

///|
pub extern "c" fn surfaceprops_get_flags(props : Surfaceprops) -> UInt32 = "moonbit_skia_surfaceprops_get_flags"

///|
pub extern "c" fn surfaceprops_get_pixel_geometry(props : Surfaceprops) -> Int32 = "moonbit_skia_surfaceprops_get_pixel_geometry"
