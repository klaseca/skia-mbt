// Generated file. Do not edit by hand.

#include <include/c/sk_paint.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  sk_paint_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_paint_resource_t;

static void moonbit_skia_paint_release(void *ptr) {
  if (ptr != NULL) sk_paint_delete((sk_paint_t *)ptr);
}

static void moonbit_skia_paint_finalize(void *self) {
  moonbit_skia_paint_resource_t *resource = (moonbit_skia_paint_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_paint_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_delete(void *self) {
  moonbit_skia_paint_finalize(self);
}

sk_paint_t *moonbit_skia_paint_ptr(void *self) {
  moonbit_skia_paint_resource_t *resource = (moonbit_skia_paint_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_paint_make(sk_paint_t *ptr, int32_t owns_ptr) {
  moonbit_skia_paint_resource_t *resource = (moonbit_skia_paint_resource_t *)moonbit_make_external_object(
    moonbit_skia_paint_finalize, sizeof(moonbit_skia_paint_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_paint_make_owned(sk_paint_t *ptr) {
  return moonbit_skia_paint_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_paint_is_null(void *self) {
  return moonbit_skia_paint_ptr(self) == NULL;
}

sk_path_t *moonbit_skia_path_ptr(void *self);

MOONBIT_FFI_EXPORT
void * moonbit_skia_paint_new(void) {
  return moonbit_skia_paint_make_owned(sk_paint_new());
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_paint_clone(void * arg0) {
  return moonbit_skia_paint_make_owned(sk_paint_clone(moonbit_skia_paint_ptr(arg0)));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_reset(void * arg0) {
  sk_paint_reset(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_paint_is_antialias(void * arg0) {
  return sk_paint_is_antialias(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_antialias(void * arg0, int32_t arg1) {
  sk_paint_set_antialias(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
sk_color_t moonbit_skia_paint_get_color(void * arg0) {
  return sk_paint_get_color(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_get_color4f_ffi(void * paint, moonbit_bytes_t color) {
  sk_paint_get_color4f(moonbit_skia_paint_ptr(paint), ((sk_color4f_t *)color));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_color(void * arg0, sk_color_t arg1) {
  sk_paint_set_color(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_color4f_ffi(void * paint, moonbit_bytes_t color, sk_colorspace_t * colorspace) {
  sk_paint_set_color4f(moonbit_skia_paint_ptr(paint), ((sk_color4f_t *)color), colorspace);
}

MOONBIT_FFI_EXPORT
sk_paint_style_t moonbit_skia_paint_get_style(void * arg0) {
  return sk_paint_get_style(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_style(void * arg0, sk_paint_style_t arg1) {
  sk_paint_set_style(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_paint_get_stroke_width(void * arg0) {
  return sk_paint_get_stroke_width(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_stroke_width(void * arg0, float width) {
  sk_paint_set_stroke_width(moonbit_skia_paint_ptr(arg0), width);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_paint_get_stroke_miter(void * arg0) {
  return sk_paint_get_stroke_miter(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_stroke_miter(void * arg0, float miter) {
  sk_paint_set_stroke_miter(moonbit_skia_paint_ptr(arg0), miter);
}

MOONBIT_FFI_EXPORT
sk_stroke_cap_t moonbit_skia_paint_get_stroke_cap(void * arg0) {
  return sk_paint_get_stroke_cap(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_stroke_cap(void * arg0, sk_stroke_cap_t arg1) {
  sk_paint_set_stroke_cap(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
sk_stroke_join_t moonbit_skia_paint_get_stroke_join(void * arg0) {
  return sk_paint_get_stroke_join(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_stroke_join(void * arg0, sk_stroke_join_t arg1) {
  sk_paint_set_stroke_join(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_shader(void * arg0, sk_shader_t * arg1) {
  sk_paint_set_shader(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_maskfilter(void * arg0, sk_maskfilter_t * arg1) {
  sk_paint_set_maskfilter(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_blendmode(void * arg0, sk_blendmode_t arg1) {
  sk_paint_set_blendmode(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_blender(void * paint, sk_blender_t * blender) {
  sk_paint_set_blender(moonbit_skia_paint_ptr(paint), blender);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_paint_is_dither(void * arg0) {
  return sk_paint_is_dither(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_dither(void * arg0, int32_t arg1) {
  sk_paint_set_dither(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
sk_shader_t * moonbit_skia_paint_get_shader(void * arg0) {
  return sk_paint_get_shader(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
sk_maskfilter_t * moonbit_skia_paint_get_maskfilter(void * arg0) {
  return sk_paint_get_maskfilter(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_colorfilter(void * arg0, sk_colorfilter_t * arg1) {
  sk_paint_set_colorfilter(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
sk_colorfilter_t * moonbit_skia_paint_get_colorfilter(void * arg0) {
  return sk_paint_get_colorfilter(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_imagefilter(void * arg0, sk_imagefilter_t * arg1) {
  sk_paint_set_imagefilter(moonbit_skia_paint_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
sk_imagefilter_t * moonbit_skia_paint_get_imagefilter(void * arg0) {
  return sk_paint_get_imagefilter(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
sk_blendmode_t moonbit_skia_paint_get_blendmode(void * arg0) {
  return sk_paint_get_blendmode(moonbit_skia_paint_ptr(arg0));
}

MOONBIT_FFI_EXPORT
sk_blender_t * moonbit_skia_paint_get_blender(void * cpaint) {
  return sk_paint_get_blender(moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
sk_path_effect_t * moonbit_skia_paint_get_path_effect(void * cpaint) {
  return sk_paint_get_path_effect(moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_paint_set_path_effect(void * cpaint, sk_path_effect_t * effect) {
  sk_paint_set_path_effect(moonbit_skia_paint_ptr(cpaint), effect);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_paint_get_fill_path_ffi(void * cpaint, void * src, sk_pathbuilder_t * dst, moonbit_bytes_t cullRect, moonbit_bytes_t cmatrix) {
  return sk_paint_get_fill_path(moonbit_skia_paint_ptr(cpaint), moonbit_skia_path_ptr(src), dst, ((const sk_rect_t *)cullRect), ((const sk_matrix_t *)cmatrix));
}
