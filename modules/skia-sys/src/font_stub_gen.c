// Generated file. Do not edit by hand.

#include <include/c/sk_font.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  sk_font_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_font_resource_t;

static void moonbit_skia_font_release(void *ptr) {
  if (ptr != NULL) sk_font_delete((sk_font_t *)ptr);
}

static void moonbit_skia_font_finalize(void *self) {
  moonbit_skia_font_resource_t *resource = (moonbit_skia_font_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_font_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_delete(void *self) {
  moonbit_skia_font_finalize(self);
}

sk_font_t *moonbit_skia_font_ptr(void *self) {
  moonbit_skia_font_resource_t *resource = (moonbit_skia_font_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_font_make(sk_font_t *ptr, int32_t owns_ptr) {
  moonbit_skia_font_resource_t *resource = (moonbit_skia_font_resource_t *)moonbit_make_external_object(
    moonbit_skia_font_finalize, sizeof(moonbit_skia_font_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_font_make_owned(sk_font_t *ptr) {
  return moonbit_skia_font_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_is_null(void *self) {
  return moonbit_skia_font_ptr(self) == NULL;
}

sk_paint_t *moonbit_skia_paint_ptr(void *self);

sk_path_t *moonbit_skia_path_ptr(void *self);

sk_typeface_t *moonbit_skia_typeface_ptr(void *self);
void *moonbit_skia_typeface_make_owned(sk_typeface_t *ptr);

MOONBIT_FFI_EXPORT
void * moonbit_skia_font_new_with_values(void * typeface, float size, float scaleX, float skewX) {
  return moonbit_skia_font_make_owned(sk_font_new_with_values(moonbit_skia_typeface_ptr(typeface), size, scaleX, skewX));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_is_force_auto_hinting(void * font) {
  return sk_font_is_force_auto_hinting(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_force_auto_hinting(void * font, int32_t value) {
  sk_font_set_force_auto_hinting(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_is_embedded_bitmaps(void * font) {
  return sk_font_is_embedded_bitmaps(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_embedded_bitmaps(void * font, int32_t value) {
  sk_font_set_embedded_bitmaps(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_is_subpixel(void * font) {
  return sk_font_is_subpixel(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_subpixel(void * font, int32_t value) {
  sk_font_set_subpixel(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_is_linear_metrics(void * font) {
  return sk_font_is_linear_metrics(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_linear_metrics(void * font, int32_t value) {
  sk_font_set_linear_metrics(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_is_embolden(void * font) {
  return sk_font_is_embolden(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_embolden(void * font, int32_t value) {
  sk_font_set_embolden(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_is_baseline_snap(void * font) {
  return sk_font_is_baseline_snap(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_baseline_snap(void * font, int32_t value) {
  sk_font_set_baseline_snap(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
sk_font_edging_t moonbit_skia_font_get_edging(void * font) {
  return sk_font_get_edging(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_edging(void * font, sk_font_edging_t value) {
  sk_font_set_edging(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
sk_font_hinting_t moonbit_skia_font_get_hinting(void * font) {
  return sk_font_get_hinting(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_hinting(void * font, sk_font_hinting_t value) {
  sk_font_set_hinting(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_font_get_typeface(void * font) {
  return moonbit_skia_typeface_make_owned(sk_font_get_typeface(moonbit_skia_font_ptr(font)));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_typeface(void * font, void * value) {
  sk_font_set_typeface(moonbit_skia_font_ptr(font), moonbit_skia_typeface_ptr(value));
}

MOONBIT_FFI_EXPORT
float moonbit_skia_font_get_size(void * font) {
  return sk_font_get_size(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_size(void * font, float value) {
  sk_font_set_size(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_font_get_scale_x(void * font) {
  return sk_font_get_scale_x(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_scale_x(void * font, float value) {
  sk_font_set_scale_x(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_font_get_skew_x(void * font) {
  return sk_font_get_skew_x(moonbit_skia_font_ptr(font));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_set_skew_x(void * font, float value) {
  sk_font_set_skew_x(moonbit_skia_font_ptr(font), value);
}

MOONBIT_FFI_EXPORT
uint16_t moonbit_skia_font_unichar_to_glyph(void * font, int32_t uni) {
  return sk_font_unichar_to_glyph(moonbit_skia_font_ptr(font), uni);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_font_measure_text(void * font, moonbit_bytes_t text, uint64_t byteLength, sk_text_encoding_t encoding) {
  return sk_font_measure_text(moonbit_skia_font_ptr(font), ((const void *)text), byteLength, encoding, NULL, NULL);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_font_measure_text_no_return_ffi(void * font, moonbit_bytes_t text, uint64_t byteLength, sk_text_encoding_t encoding, moonbit_bytes_t bounds, void * paint, float * measuredWidth) {
  float measuredWidth_value = 0;
  sk_font_measure_text_no_return(moonbit_skia_font_ptr(font), ((const void *)text), byteLength, encoding, ((sk_rect_t *)bounds), moonbit_skia_paint_ptr(paint), &measuredWidth_value);
  if (measuredWidth != NULL) *measuredWidth = measuredWidth_value;
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_font_break_text(void * font, moonbit_bytes_t text, uint64_t byteLength, sk_text_encoding_t encoding, float maxWidth, float * measuredWidth, void * paint) {
  float measuredWidth_value = 0;
  uint64_t result = sk_font_break_text(moonbit_skia_font_ptr(font), ((const void *)text), byteLength, encoding, maxWidth, &measuredWidth_value, moonbit_skia_paint_ptr(paint));
  if (measuredWidth != NULL) *measuredWidth = measuredWidth_value;
  return result;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_font_get_path(void * font, uint16_t glyph, void * path) {
  return sk_font_get_path(moonbit_skia_font_ptr(font), glyph, moonbit_skia_path_ptr(path));
}

MOONBIT_FFI_EXPORT
float moonbit_skia_font_get_metrics_ffi(void * font, moonbit_bytes_t metrics) {
  return sk_font_get_metrics(moonbit_skia_font_ptr(font), ((sk_fontmetrics_t *)metrics));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_text_utils_get_path(moonbit_bytes_t text, uint64_t length, sk_text_encoding_t encoding, float x, float y, void * font, void * path) {
  sk_text_utils_get_path(((const void *)text), length, encoding, x, y, moonbit_skia_font_ptr(font), moonbit_skia_path_ptr(path));
}
