// Generated file. Do not edit by hand.

#include <include/c/gr_context.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  gr_glinterface_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_grglinterface_resource_t;

static void moonbit_skia_grglinterface_release(void *ptr) {
  if (ptr != NULL) gr_glinterface_unref((const gr_glinterface_t *)ptr);
}

static void moonbit_skia_grglinterface_finalize(void *self) {
  moonbit_skia_grglinterface_resource_t *resource = (moonbit_skia_grglinterface_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_grglinterface_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_glinterface_unref(void *self) {
  moonbit_skia_grglinterface_finalize(self);
}

gr_glinterface_t *moonbit_skia_grglinterface_ptr(void *self) {
  moonbit_skia_grglinterface_resource_t *resource = (moonbit_skia_grglinterface_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_grglinterface_make(gr_glinterface_t *ptr, int32_t owns_ptr) {
  moonbit_skia_grglinterface_resource_t *resource = (moonbit_skia_grglinterface_resource_t *)moonbit_make_external_object(
    moonbit_skia_grglinterface_finalize, sizeof(moonbit_skia_grglinterface_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_grglinterface_make_owned(gr_glinterface_t *ptr) {
  return moonbit_skia_grglinterface_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_glinterface_is_null(void *self) {
  return moonbit_skia_grglinterface_ptr(self) == NULL;
}

typedef struct {
  gr_backendrendertarget_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_grbackendrendertarget_resource_t;

static void moonbit_skia_grbackendrendertarget_release(void *ptr) {
  if (ptr != NULL) gr_backendrendertarget_delete((gr_backendrendertarget_t *)ptr);
}

static void moonbit_skia_grbackendrendertarget_finalize(void *self) {
  moonbit_skia_grbackendrendertarget_resource_t *resource = (moonbit_skia_grbackendrendertarget_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_grbackendrendertarget_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_backendrendertarget_delete(void *self) {
  moonbit_skia_grbackendrendertarget_finalize(self);
}

gr_backendrendertarget_t *moonbit_skia_grbackendrendertarget_ptr(void *self) {
  moonbit_skia_grbackendrendertarget_resource_t *resource = (moonbit_skia_grbackendrendertarget_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_grbackendrendertarget_make(gr_backendrendertarget_t *ptr, int32_t owns_ptr) {
  moonbit_skia_grbackendrendertarget_resource_t *resource = (moonbit_skia_grbackendrendertarget_resource_t *)moonbit_make_external_object(
    moonbit_skia_grbackendrendertarget_finalize, sizeof(moonbit_skia_grbackendrendertarget_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_grbackendrendertarget_make_owned(gr_backendrendertarget_t *ptr) {
  return moonbit_skia_grbackendrendertarget_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendrendertarget_is_null(void *self) {
  return moonbit_skia_grbackendrendertarget_ptr(self) == NULL;
}

sk_image_t *moonbit_skia_image_ptr(void *self);

sk_surface_t *moonbit_skia_surface_ptr(void *self);

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_recording_context_unref(gr_recording_context_t * context) {
  gr_recording_context_unref(context);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_recording_context_get_max_surface_sample_count_for_color_type(gr_recording_context_t * context, sk_colortype_t colorType) {
  return gr_recording_context_get_max_surface_sample_count_for_color_type(context, colorType);
}

MOONBIT_FFI_EXPORT
gr_backend_t moonbit_skia_gr_recording_context_get_backend(gr_recording_context_t * context) {
  return gr_recording_context_get_backend(context);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_recording_context_is_abandoned(gr_recording_context_t * context) {
  return gr_recording_context_is_abandoned(context);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_recording_context_max_texture_size(gr_recording_context_t * context) {
  return gr_recording_context_max_texture_size(context);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_recording_context_max_render_target_size(gr_recording_context_t * context) {
  return gr_recording_context_max_render_target_size(context);
}

MOONBIT_FFI_EXPORT
gr_direct_context_t * moonbit_skia_gr_recording_context_get_direct_context(gr_recording_context_t * context) {
  return gr_recording_context_get_direct_context(context);
}

MOONBIT_FFI_EXPORT
gr_direct_context_t * moonbit_skia_gr_direct_context_make_gl(void * glInterface) {
  return gr_direct_context_make_gl(moonbit_skia_grglinterface_ptr(glInterface));
}

MOONBIT_FFI_EXPORT
gr_direct_context_t * moonbit_skia_gr_direct_context_make_metal(void * device, void * queue) {
  return gr_direct_context_make_metal(device, queue);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_direct_context_is_abandoned(gr_direct_context_t * context) {
  return gr_direct_context_is_abandoned(context);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_abandon_context(gr_direct_context_t * context) {
  gr_direct_context_abandon_context(context);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_release_resources_and_abandon_context(gr_direct_context_t * context) {
  gr_direct_context_release_resources_and_abandon_context(context);
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_gr_direct_context_get_resource_cache_limit(gr_direct_context_t * context) {
  return gr_direct_context_get_resource_cache_limit(context);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_set_resource_cache_limit(gr_direct_context_t * context, uint64_t maxResourceBytes) {
  gr_direct_context_set_resource_cache_limit(context, maxResourceBytes);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_get_resource_cache_usage(gr_direct_context_t * context, int32_t * maxResources, uint64_t * maxResourceBytes) {
  int maxResources_value = 0;
  size_t maxResourceBytes_value = 0;
  gr_direct_context_get_resource_cache_usage(context, &maxResources_value, &maxResourceBytes_value);
  if (maxResources != NULL) *maxResources = maxResources_value;
  if (maxResourceBytes != NULL) *maxResourceBytes = maxResourceBytes_value;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_flush(gr_direct_context_t * context) {
  gr_direct_context_flush(context);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_direct_context_submit(gr_direct_context_t * context, int32_t syncCpu) {
  return gr_direct_context_submit(context, syncCpu);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_flush_and_submit(gr_direct_context_t * context, int32_t syncCpu) {
  gr_direct_context_flush_and_submit(context, syncCpu);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_flush_image(gr_direct_context_t * context, void * image) {
  gr_direct_context_flush_image(context, moonbit_skia_image_ptr(image));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_flush_surface(gr_direct_context_t * context, void * surface) {
  gr_direct_context_flush_surface(context, moonbit_skia_surface_ptr(surface));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_reset_context(gr_direct_context_t * context, uint32_t state) {
  gr_direct_context_reset_context(context, state);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_dump_memory_statistics(const gr_direct_context_t * context, sk_tracememorydump_t * dump) {
  gr_direct_context_dump_memory_statistics(context, dump);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_free_gpu_resources(gr_direct_context_t * context) {
  gr_direct_context_free_gpu_resources(context);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_perform_deferred_cleanup(gr_direct_context_t * context, int64_t ms) {
  gr_direct_context_perform_deferred_cleanup(context, ms);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_purge_unlocked_resources_bytes(gr_direct_context_t * context, uint64_t bytesToPurge, int32_t preferScratchResources) {
  gr_direct_context_purge_unlocked_resources_bytes(context, bytesToPurge, preferScratchResources);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_direct_context_purge_unlocked_resources(gr_direct_context_t * context, int32_t scratchResourcesOnly) {
  gr_direct_context_purge_unlocked_resources(context, scratchResourcesOnly);
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_gr_glinterface_create_native_interface(void) {
  return moonbit_skia_grglinterface_make_owned((gr_glinterface_t *)gr_glinterface_create_native_interface());
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_glinterface_validate(void * glInterface) {
  return gr_glinterface_validate(moonbit_skia_grglinterface_ptr(glInterface));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_glinterface_has_extension(void * glInterface, moonbit_bytes_t extension) {
  return gr_glinterface_has_extension(moonbit_skia_grglinterface_ptr(glInterface), (const char *)extension);
}

MOONBIT_FFI_EXPORT
gr_vk_extensions_t * moonbit_skia_gr_vk_extensions_new(void) {
  return gr_vk_extensions_new();
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_vk_extensions_delete(gr_vk_extensions_t * extensions) {
  gr_vk_extensions_delete(extensions);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_vk_extensions_has_extension(gr_vk_extensions_t * extensions, moonbit_bytes_t ext, uint32_t minVersion) {
  return gr_vk_extensions_has_extension(extensions, (const char *)ext, minVersion);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_gr_backendtexture_delete(gr_backendtexture_t * texture) {
  gr_backendtexture_delete(texture);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendtexture_is_valid(const gr_backendtexture_t * texture) {
  return gr_backendtexture_is_valid(texture);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendtexture_get_width(const gr_backendtexture_t * texture) {
  return gr_backendtexture_get_width(texture);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendtexture_get_height(const gr_backendtexture_t * texture) {
  return gr_backendtexture_get_height(texture);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendtexture_has_mipmaps(const gr_backendtexture_t * texture) {
  return gr_backendtexture_has_mipmaps(texture);
}

MOONBIT_FFI_EXPORT
gr_backend_t moonbit_skia_gr_backendtexture_get_backend(const gr_backendtexture_t * texture) {
  return gr_backendtexture_get_backend(texture);
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_gr_backendrendertarget_new_gl_ffi(int32_t width, int32_t height, int32_t samples, int32_t stencils, moonbit_bytes_t glInfo, int32_t glInfo_offset) {
  return moonbit_skia_grbackendrendertarget_make_owned(gr_backendrendertarget_new_gl(width, height, samples, stencils, ((const gr_gl_framebufferinfo_t *)(glInfo + glInfo_offset))));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendrendertarget_is_valid(void * rendertarget) {
  return gr_backendrendertarget_is_valid(moonbit_skia_grbackendrendertarget_ptr(rendertarget));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendrendertarget_get_width(void * rendertarget) {
  return gr_backendrendertarget_get_width(moonbit_skia_grbackendrendertarget_ptr(rendertarget));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendrendertarget_get_height(void * rendertarget) {
  return gr_backendrendertarget_get_height(moonbit_skia_grbackendrendertarget_ptr(rendertarget));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendrendertarget_get_samples(void * rendertarget) {
  return gr_backendrendertarget_get_samples(moonbit_skia_grbackendrendertarget_ptr(rendertarget));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendrendertarget_get_stencils(void * rendertarget) {
  return gr_backendrendertarget_get_stencils(moonbit_skia_grbackendrendertarget_ptr(rendertarget));
}

MOONBIT_FFI_EXPORT
gr_backend_t moonbit_skia_gr_backendrendertarget_get_backend(void * rendertarget) {
  return gr_backendrendertarget_get_backend(moonbit_skia_grbackendrendertarget_ptr(rendertarget));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_gr_backendrendertarget_get_gl_framebufferinfo_ffi(void * rendertarget, moonbit_bytes_t glInfo, int32_t glInfo_offset) {
  return gr_backendrendertarget_get_gl_framebufferinfo(moonbit_skia_grbackendrendertarget_ptr(rendertarget), ((gr_gl_framebufferinfo_t *)(glInfo + glInfo_offset)));
}
