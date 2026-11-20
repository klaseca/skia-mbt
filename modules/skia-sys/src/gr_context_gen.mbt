// Generated file. Do not edit by hand.

///|
pub extern "c" fn gr_recording_context_unref(context : GrRecordingContext) = "moonbit_skia_gr_recording_context_unref"

///|
pub extern "c" fn gr_recording_context_get_max_surface_sample_count_for_color_type(context : GrRecordingContext, colorType : Int32) -> Int32 = "moonbit_skia_gr_recording_context_get_max_surface_sample_count_for_color_type"

///|
pub extern "c" fn gr_recording_context_get_backend(context : GrRecordingContext) -> Int32 = "moonbit_skia_gr_recording_context_get_backend"

///|
pub extern "c" fn gr_recording_context_is_abandoned(context : GrRecordingContext) -> Bool = "moonbit_skia_gr_recording_context_is_abandoned"

///|
pub extern "c" fn gr_recording_context_max_texture_size(context : GrRecordingContext) -> Int32 = "moonbit_skia_gr_recording_context_max_texture_size"

///|
pub extern "c" fn gr_recording_context_max_render_target_size(context : GrRecordingContext) -> Int32 = "moonbit_skia_gr_recording_context_max_render_target_size"

///|
pub extern "c" fn gr_recording_context_get_direct_context(context : GrRecordingContext) -> GrDirectContext = "moonbit_skia_gr_recording_context_get_direct_context"

///|
#borrow(glInterface)
pub extern "c" fn gr_direct_context_make_gl(glInterface : GrGlinterface) -> GrDirectContext = "moonbit_skia_gr_direct_context_make_gl"

///|
pub extern "c" fn gr_direct_context_make_metal(device : Pointer, queue : Pointer) -> GrDirectContext = "moonbit_skia_gr_direct_context_make_metal"

///|
pub extern "c" fn gr_direct_context_is_abandoned(context : GrDirectContext) -> Bool = "moonbit_skia_gr_direct_context_is_abandoned"

///|
pub extern "c" fn gr_direct_context_abandon_context(context : GrDirectContext) = "moonbit_skia_gr_direct_context_abandon_context"

///|
pub extern "c" fn gr_direct_context_release_resources_and_abandon_context(context : GrDirectContext) = "moonbit_skia_gr_direct_context_release_resources_and_abandon_context"

///|
pub extern "c" fn gr_direct_context_get_resource_cache_limit(context : GrDirectContext) -> UInt64 = "moonbit_skia_gr_direct_context_get_resource_cache_limit"

///|
pub extern "c" fn gr_direct_context_set_resource_cache_limit(context : GrDirectContext, maxResourceBytes : UInt64) = "moonbit_skia_gr_direct_context_set_resource_cache_limit"

///|
#borrow(maxResources, maxResourceBytes)
pub extern "c" fn gr_direct_context_get_resource_cache_usage(context : GrDirectContext, maxResources : Ref[Int32], maxResourceBytes : Ref[UInt64]) = "moonbit_skia_gr_direct_context_get_resource_cache_usage"

///|
pub extern "c" fn gr_direct_context_flush(context : GrDirectContext) = "moonbit_skia_gr_direct_context_flush"

///|
pub extern "c" fn gr_direct_context_submit(context : GrDirectContext, syncCpu : Bool) -> Bool = "moonbit_skia_gr_direct_context_submit"

///|
pub extern "c" fn gr_direct_context_flush_and_submit(context : GrDirectContext, syncCpu : Bool) = "moonbit_skia_gr_direct_context_flush_and_submit"

///|
#borrow(image)
pub extern "c" fn gr_direct_context_flush_image(context : GrDirectContext, image : Image) = "moonbit_skia_gr_direct_context_flush_image"

///|
#borrow(surface)
pub extern "c" fn gr_direct_context_flush_surface(context : GrDirectContext, surface : Surface) = "moonbit_skia_gr_direct_context_flush_surface"

///|
pub extern "c" fn gr_direct_context_reset_context(context : GrDirectContext, state : UInt32) = "moonbit_skia_gr_direct_context_reset_context"

///|
pub extern "c" fn gr_direct_context_dump_memory_statistics(context : GrDirectContext, dump : Tracememorydump) = "moonbit_skia_gr_direct_context_dump_memory_statistics"

///|
pub extern "c" fn gr_direct_context_free_gpu_resources(context : GrDirectContext) = "moonbit_skia_gr_direct_context_free_gpu_resources"

///|
pub extern "c" fn gr_direct_context_perform_deferred_cleanup(context : GrDirectContext, ms : Int64) = "moonbit_skia_gr_direct_context_perform_deferred_cleanup"

///|
pub extern "c" fn gr_direct_context_purge_unlocked_resources_bytes(context : GrDirectContext, bytesToPurge : UInt64, preferScratchResources : Bool) = "moonbit_skia_gr_direct_context_purge_unlocked_resources_bytes"

///|
pub extern "c" fn gr_direct_context_purge_unlocked_resources(context : GrDirectContext, scratchResourcesOnly : Bool) = "moonbit_skia_gr_direct_context_purge_unlocked_resources"

///|
pub extern "c" fn gr_glinterface_create_native_interface() -> GrGlinterface = "moonbit_skia_gr_glinterface_create_native_interface"

///|
#borrow(glInterface)
pub extern "c" fn gr_glinterface_unref(glInterface : GrGlinterface) = "moonbit_skia_gr_glinterface_unref"

///|
#borrow(glInterface)
pub extern "c" fn gr_glinterface_validate(glInterface : GrGlinterface) -> Bool = "moonbit_skia_gr_glinterface_validate"

///|
#borrow(glInterface, extension)
pub extern "c" fn gr_glinterface_has_extension(glInterface : GrGlinterface, extension : Bytes) -> Bool = "moonbit_skia_gr_glinterface_has_extension"

///|
pub extern "c" fn gr_vk_extensions_new() -> GrVkExtensions = "moonbit_skia_gr_vk_extensions_new"

///|
pub extern "c" fn gr_vk_extensions_delete(extensions : GrVkExtensions) = "moonbit_skia_gr_vk_extensions_delete"

///|
#borrow(ext)
pub extern "c" fn gr_vk_extensions_has_extension(extensions : GrVkExtensions, ext : Bytes, minVersion : UInt32) -> Bool = "moonbit_skia_gr_vk_extensions_has_extension"

///|
pub extern "c" fn gr_backendtexture_delete(texture : GrBackendtexture) = "moonbit_skia_gr_backendtexture_delete"

///|
pub extern "c" fn gr_backendtexture_is_valid(texture : GrBackendtexture) -> Bool = "moonbit_skia_gr_backendtexture_is_valid"

///|
pub extern "c" fn gr_backendtexture_get_width(texture : GrBackendtexture) -> Int32 = "moonbit_skia_gr_backendtexture_get_width"

///|
pub extern "c" fn gr_backendtexture_get_height(texture : GrBackendtexture) -> Int32 = "moonbit_skia_gr_backendtexture_get_height"

///|
pub extern "c" fn gr_backendtexture_has_mipmaps(texture : GrBackendtexture) -> Bool = "moonbit_skia_gr_backendtexture_has_mipmaps"

///|
pub extern "c" fn gr_backendtexture_get_backend(texture : GrBackendtexture) -> Int32 = "moonbit_skia_gr_backendtexture_get_backend"

///|
#borrow(glInfo)
extern "c" fn gr_backendrendertarget_new_gl_ffi(width : Int32, height : Int32, samples : Int32, stencils : Int32, glInfo : Bytes, glInfo_offset : Int32) -> GrBackendrendertarget = "moonbit_skia_gr_backendrendertarget_new_gl_ffi"

///|
pub fn gr_backendrendertarget_new_gl(width : Int32, height : Int32, samples : Int32, stencils : Int32, glInfo : GrGlFramebufferinfo) -> GrBackendrendertarget {
  gr_backendrendertarget_new_gl_ffi(width, height, samples, stencils, glInfo.bytes, glInfo.offset)
}

///|
#borrow(rendertarget)
pub extern "c" fn gr_backendrendertarget_delete(rendertarget : GrBackendrendertarget) = "moonbit_skia_gr_backendrendertarget_delete"

///|
#borrow(rendertarget)
pub extern "c" fn gr_backendrendertarget_is_valid(rendertarget : GrBackendrendertarget) -> Bool = "moonbit_skia_gr_backendrendertarget_is_valid"

///|
#borrow(rendertarget)
pub extern "c" fn gr_backendrendertarget_get_width(rendertarget : GrBackendrendertarget) -> Int32 = "moonbit_skia_gr_backendrendertarget_get_width"

///|
#borrow(rendertarget)
pub extern "c" fn gr_backendrendertarget_get_height(rendertarget : GrBackendrendertarget) -> Int32 = "moonbit_skia_gr_backendrendertarget_get_height"

///|
#borrow(rendertarget)
pub extern "c" fn gr_backendrendertarget_get_samples(rendertarget : GrBackendrendertarget) -> Int32 = "moonbit_skia_gr_backendrendertarget_get_samples"

///|
#borrow(rendertarget)
pub extern "c" fn gr_backendrendertarget_get_stencils(rendertarget : GrBackendrendertarget) -> Int32 = "moonbit_skia_gr_backendrendertarget_get_stencils"

///|
#borrow(rendertarget)
pub extern "c" fn gr_backendrendertarget_get_backend(rendertarget : GrBackendrendertarget) -> Int32 = "moonbit_skia_gr_backendrendertarget_get_backend"

///|
#borrow(rendertarget, glInfo)
extern "c" fn gr_backendrendertarget_get_gl_framebufferinfo_ffi(rendertarget : GrBackendrendertarget, glInfo : Bytes, glInfo_offset : Int32) -> Bool = "moonbit_skia_gr_backendrendertarget_get_gl_framebufferinfo_ffi"

///|
pub fn gr_backendrendertarget_get_gl_framebufferinfo(rendertarget : GrBackendrendertarget, glInfo : GrGlFramebufferinfo) -> Bool {
  gr_backendrendertarget_get_gl_framebufferinfo_ffi(rendertarget, glInfo.bytes, glInfo.offset)
}
