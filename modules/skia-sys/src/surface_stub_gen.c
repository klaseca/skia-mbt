// Generated file. Do not edit by hand.

#include <include/c/sk_surface.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

void moonbit_skia_refcnt_safe_ref(sk_refcnt_t * refcnt);

typedef struct {
  sk_surface_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_surface_resource_t;

void moonbit_skia_surface_release(void *ptr) {
  if (ptr != NULL) sk_surface_unref((sk_surface_t *)ptr);
}

void moonbit_skia_surface_retain(void *ptr) {
  if (ptr != NULL) moonbit_skia_refcnt_safe_ref((sk_refcnt_t *)ptr);
}

static void moonbit_skia_surface_finalize(void *self) {
  moonbit_skia_surface_resource_t *resource = (moonbit_skia_surface_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_surface_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_surface_unref(void *self) {
  moonbit_skia_surface_finalize(self);
}

sk_surface_t *moonbit_skia_surface_ptr(void *self) {
  moonbit_skia_surface_resource_t *resource = (moonbit_skia_surface_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_surface_make(sk_surface_t *ptr, int32_t owns_ptr) {
  moonbit_skia_surface_resource_t *resource = (moonbit_skia_surface_resource_t *)moonbit_make_external_object(
    moonbit_skia_surface_finalize, sizeof(moonbit_skia_surface_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_surface_make_owned(sk_surface_t *ptr) {
  return moonbit_skia_surface_make(ptr, 1);
}

void *moonbit_skia_surface_make_retained(sk_surface_t *ptr) {
  moonbit_skia_surface_retain(ptr);
  return moonbit_skia_surface_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_surface_is_null(void *self) {
  return moonbit_skia_surface_ptr(self) == NULL;
}

sk_canvas_t *moonbit_skia_canvas_ptr(void *self);
void *moonbit_skia_canvas_make_dependent(sk_canvas_t *ptr, void *owner, void (*retain_owner)(void *), void (*release_owner)(void *));

sk_paint_t *moonbit_skia_paint_ptr(void *self);

MOONBIT_FFI_EXPORT
void * moonbit_skia_surface_new_null(int32_t width, int32_t height) {
  return moonbit_skia_surface_make_owned(sk_surface_new_null(width, height));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_surface_new_raster_ffi(moonbit_bytes_t arg0, uint64_t rowBytes, const sk_surfaceprops_t * arg2) {
  return moonbit_skia_surface_make_owned(sk_surface_new_raster(((const sk_imageinfo_t *)arg0), rowBytes, arg2));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_surface_new_backend_texture(gr_recording_context_t * context, const gr_backendtexture_t * texture, gr_surfaceorigin_t origin, int32_t samples, sk_colortype_t colorType, sk_colorspace_t * colorspace, const sk_surfaceprops_t * props) {
  return moonbit_skia_surface_make_owned(sk_surface_new_backend_texture(context, texture, origin, samples, colorType, colorspace, props));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_surface_new_backend_render_target(gr_recording_context_t * context, const gr_backendrendertarget_t * target, gr_surfaceorigin_t origin, sk_colortype_t colorType, sk_colorspace_t * colorspace, const sk_surfaceprops_t * props) {
  return moonbit_skia_surface_make_owned(sk_surface_new_backend_render_target(context, target, origin, colorType, colorspace, props));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_surface_new_render_target_ffi(gr_recording_context_t * context, int32_t budgeted, moonbit_bytes_t cinfo, int32_t sampleCount, gr_surfaceorigin_t origin, const sk_surfaceprops_t * props, int32_t shouldCreateWithMips) {
  return moonbit_skia_surface_make_owned(sk_surface_new_render_target(context, budgeted, ((const sk_imageinfo_t *)cinfo), sampleCount, origin, props, shouldCreateWithMips));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_surface_get_canvas(void * arg0) {
  return moonbit_skia_canvas_make_dependent(sk_surface_get_canvas(moonbit_skia_surface_ptr(arg0)), moonbit_skia_surface_ptr(arg0), moonbit_skia_surface_retain, moonbit_skia_surface_release);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_surface_new_image_snapshot(void * arg0) {
  return sk_surface_new_image_snapshot(moonbit_skia_surface_ptr(arg0));
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_surface_new_image_snapshot_with_crop_ffi(void * surface, moonbit_bytes_t bounds) {
  return sk_surface_new_image_snapshot_with_crop(moonbit_skia_surface_ptr(surface), ((const sk_irect_t *)bounds));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_surface_draw(void * surface, void * canvas, float x, float y, void * paint) {
  sk_surface_draw(moonbit_skia_surface_ptr(surface), moonbit_skia_canvas_ptr(canvas), x, y, moonbit_skia_paint_ptr(paint));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_surface_peek_pixels(void * surface, sk_pixmap_t * pixmap) {
  return sk_surface_peek_pixels(moonbit_skia_surface_ptr(surface), pixmap);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_surface_read_pixels_ffi(void * surface, moonbit_bytes_t dstInfo, moonbit_bytes_t dstPixels, uint64_t dstRowBytes, int32_t srcX, int32_t srcY) {
  return sk_surface_read_pixels(moonbit_skia_surface_ptr(surface), ((sk_imageinfo_t *)dstInfo), ((void *)dstPixels), dstRowBytes, srcX, srcY);
}

MOONBIT_FFI_EXPORT
const sk_surfaceprops_t * moonbit_skia_surface_get_props(void * surface) {
  return sk_surface_get_props(moonbit_skia_surface_ptr(surface));
}

MOONBIT_FFI_EXPORT
gr_recording_context_t * moonbit_skia_surface_get_recording_context(void * surface) {
  return sk_surface_get_recording_context(moonbit_skia_surface_ptr(surface));
}

MOONBIT_FFI_EXPORT
sk_surfaceprops_t * moonbit_skia_surfaceprops_new(uint32_t flags, sk_pixelgeometry_t geometry) {
  return sk_surfaceprops_new(flags, geometry);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_surfaceprops_delete(sk_surfaceprops_t * props) {
  sk_surfaceprops_delete(props);
}

MOONBIT_FFI_EXPORT
uint32_t moonbit_skia_surfaceprops_get_flags(sk_surfaceprops_t * props) {
  return sk_surfaceprops_get_flags(props);
}

MOONBIT_FFI_EXPORT
sk_pixelgeometry_t moonbit_skia_surfaceprops_get_pixel_geometry(sk_surfaceprops_t * props) {
  return sk_surfaceprops_get_pixel_geometry(props);
}
