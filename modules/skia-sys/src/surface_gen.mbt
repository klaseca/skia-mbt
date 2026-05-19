// Generated file. Do not edit by hand.

///|
pub extern "c" fn surface_new_null(width : Int, height : Int) -> Surface = "moonbit_skia_surface_new_null"

///|
#borrow(arg0)
extern "c" fn surface_new_raster_ffi(arg0 : Bytes, rowBytes : UInt64, arg2 : Surfaceprops) -> Surface = "moonbit_skia_surface_new_raster_ffi"

///|
pub fn surface_new_raster(arg0 : Imageinfo, rowBytes : UInt64, arg2 : Surfaceprops) -> Surface {
  surface_new_raster_ffi(arg0.to_bytes(), rowBytes, arg2)
}

///|
pub extern "c" fn surface_new_backend_texture(context : GrRecordingContext, texture : GrBackendtexture, origin : Int, samples : Int, colorType : Int, colorspace : Colorspace, props : Surfaceprops) -> Surface = "moonbit_skia_surface_new_backend_texture"

///|
pub extern "c" fn surface_new_backend_render_target(context : GrRecordingContext, target : GrBackendrendertarget, origin : Int, colorType : Int, colorspace : Colorspace, props : Surfaceprops) -> Surface = "moonbit_skia_surface_new_backend_render_target"

///|
#borrow(cinfo)
extern "c" fn surface_new_render_target_ffi(context : GrRecordingContext, budgeted : Bool, cinfo : Bytes, sampleCount : Int, origin : Int, props : Surfaceprops, shouldCreateWithMips : Bool) -> Surface = "moonbit_skia_surface_new_render_target_ffi"

///|
pub fn surface_new_render_target(context : GrRecordingContext, budgeted : Bool, cinfo : Imageinfo, sampleCount : Int, origin : Int, props : Surfaceprops, shouldCreateWithMips : Bool) -> Surface {
  surface_new_render_target_ffi(context, budgeted, cinfo.to_bytes(), sampleCount, origin, props, shouldCreateWithMips)
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
extern "c" fn surface_new_image_snapshot_with_crop_ffi(surface : Surface, bounds : Bytes) -> Image = "moonbit_skia_surface_new_image_snapshot_with_crop_ffi"

///|
pub fn surface_new_image_snapshot_with_crop(surface : Surface, bounds : Irect) -> Image {
  surface_new_image_snapshot_with_crop_ffi(surface, bounds.to_bytes())
}

///|
#borrow(surface, canvas, paint)
pub extern "c" fn surface_draw(surface : Surface, canvas : Canvas, x : Float, y : Float, paint : Paint) = "moonbit_skia_surface_draw"

///|
#borrow(surface)
pub extern "c" fn surface_peek_pixels(surface : Surface, pixmap : Pixmap) -> Bool = "moonbit_skia_surface_peek_pixels"

///|
#borrow(surface, dstInfo, dstPixels)
extern "c" fn surface_read_pixels_ffi(surface : Surface, dstInfo : Bytes, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int, srcY : Int) -> Bool = "moonbit_skia_surface_read_pixels_ffi"

///|
pub fn surface_read_pixels(surface : Surface, dstInfo : Imageinfo, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int, srcY : Int) -> Bool {
  surface_read_pixels_ffi(surface, dstInfo.to_bytes(), dstPixels, dstRowBytes, srcX, srcY)
}

///|
#borrow(surface)
pub extern "c" fn surface_get_props(surface : Surface) -> Surfaceprops = "moonbit_skia_surface_get_props"

///|
#borrow(surface)
pub extern "c" fn surface_get_recording_context(surface : Surface) -> GrRecordingContext = "moonbit_skia_surface_get_recording_context"

///|
pub extern "c" fn surfaceprops_new(flags : UInt, geometry : Int) -> Surfaceprops = "moonbit_skia_surfaceprops_new"

///|
pub extern "c" fn surfaceprops_delete(props : Surfaceprops) = "moonbit_skia_surfaceprops_delete"

///|
pub extern "c" fn surfaceprops_get_flags(props : Surfaceprops) -> UInt = "moonbit_skia_surfaceprops_get_flags"

///|
pub extern "c" fn surfaceprops_get_pixel_geometry(props : Surfaceprops) -> Int = "moonbit_skia_surfaceprops_get_pixel_geometry"
