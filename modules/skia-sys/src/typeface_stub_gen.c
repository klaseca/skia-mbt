// Generated file. Do not edit by hand.

#include <include/c/sk_typeface.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  sk_typeface_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_typeface_resource_t;

static void moonbit_skia_typeface_release(void *ptr) {
  if (ptr != NULL) sk_typeface_unref((sk_typeface_t *)ptr);
}

static void moonbit_skia_typeface_finalize(void *self) {
  moonbit_skia_typeface_resource_t *resource = (moonbit_skia_typeface_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_typeface_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_typeface_unref(void *self) {
  moonbit_skia_typeface_finalize(self);
}

sk_typeface_t *moonbit_skia_typeface_ptr(void *self) {
  moonbit_skia_typeface_resource_t *resource = (moonbit_skia_typeface_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_typeface_make(sk_typeface_t *ptr, int32_t owns_ptr) {
  moonbit_skia_typeface_resource_t *resource = (moonbit_skia_typeface_resource_t *)moonbit_make_external_object(
    moonbit_skia_typeface_finalize, sizeof(moonbit_skia_typeface_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_typeface_make_owned(sk_typeface_t *ptr) {
  return moonbit_skia_typeface_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_typeface_is_null(void *self) {
  return moonbit_skia_typeface_ptr(self) == NULL;
}

MOONBIT_FFI_EXPORT
sk_fontstyle_t * moonbit_skia_typeface_get_fontstyle(void * typeface) {
  return sk_typeface_get_fontstyle(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_typeface_get_font_weight(void * typeface) {
  return sk_typeface_get_font_weight(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_typeface_get_font_width(void * typeface) {
  return sk_typeface_get_font_width(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
sk_font_style_slant_t moonbit_skia_typeface_get_font_slant(void * typeface) {
  return sk_typeface_get_font_slant(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_typeface_is_fixed_pitch(void * typeface) {
  return sk_typeface_is_fixed_pitch(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_typeface_create_empty(void) {
  return moonbit_skia_typeface_make_owned(sk_typeface_create_empty());
}

MOONBIT_FFI_EXPORT
uint16_t moonbit_skia_typeface_unichar_to_glyph(void * typeface, int32_t unichar) {
  return sk_typeface_unichar_to_glyph(moonbit_skia_typeface_ptr(typeface), unichar);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_typeface_count_glyphs(void * typeface) {
  return sk_typeface_count_glyphs(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_typeface_count_tables(void * typeface) {
  return sk_typeface_count_tables(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_typeface_get_table_size(void * typeface, sk_font_table_tag_t tag) {
  return sk_typeface_get_table_size(moonbit_skia_typeface_ptr(typeface), tag);
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_typeface_get_table_data(void * typeface, sk_font_table_tag_t tag, uint64_t offset, uint64_t length, moonbit_bytes_t data) {
  return sk_typeface_get_table_data(moonbit_skia_typeface_ptr(typeface), tag, offset, length, ((void *)data));
}

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_typeface_copy_table_data(void * typeface, sk_font_table_tag_t tag) {
  return sk_typeface_copy_table_data(moonbit_skia_typeface_ptr(typeface), tag);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_typeface_get_units_per_em(void * typeface) {
  return sk_typeface_get_units_per_em(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
sk_string_t * moonbit_skia_typeface_get_family_name(void * typeface) {
  return sk_typeface_get_family_name(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
sk_string_t * moonbit_skia_typeface_get_post_script_name(void * typeface) {
  return sk_typeface_get_post_script_name(moonbit_skia_typeface_ptr(typeface));
}

MOONBIT_FFI_EXPORT
sk_stream_asset_t * moonbit_skia_typeface_open_stream(void * typeface, int32_t * ttcIndex) {
  int ttcIndex_value = 0;
  sk_stream_asset_t * result = sk_typeface_open_stream(moonbit_skia_typeface_ptr(typeface), &ttcIndex_value);
  if (ttcIndex != NULL) *ttcIndex = ttcIndex_value;
  return result;
}

MOONBIT_FFI_EXPORT
sk_fontmgr_t * moonbit_skia_fontmgr_create_default(void) {
  return sk_fontmgr_create_default();
}

MOONBIT_FFI_EXPORT
void moonbit_skia_fontmgr_unref(sk_fontmgr_t * arg0) {
  sk_fontmgr_unref(arg0);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_fontmgr_count_families(sk_fontmgr_t * arg0) {
  return sk_fontmgr_count_families(arg0);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_fontmgr_get_family_name(sk_fontmgr_t * arg0, int32_t index, sk_string_t * familyName) {
  sk_fontmgr_get_family_name(arg0, index, familyName);
}

MOONBIT_FFI_EXPORT
sk_fontstyleset_t * moonbit_skia_fontmgr_create_styleset(sk_fontmgr_t * arg0, int32_t index) {
  return sk_fontmgr_create_styleset(arg0, index);
}

MOONBIT_FFI_EXPORT
sk_fontstyleset_t * moonbit_skia_fontmgr_match_family(sk_fontmgr_t * arg0, moonbit_bytes_t familyName) {
  return sk_fontmgr_match_family(arg0, (const char *)familyName);
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_fontmgr_match_family_style(sk_fontmgr_t * arg0, moonbit_bytes_t familyName, sk_fontstyle_t * style) {
  return moonbit_skia_typeface_make_owned(sk_fontmgr_match_family_style(arg0, (const char *)familyName, style));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_fontmgr_create_from_data(sk_fontmgr_t * arg0, sk_data_t * data, int32_t index) {
  return moonbit_skia_typeface_make_owned(sk_fontmgr_create_from_data(arg0, data, index));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_fontmgr_create_from_stream(sk_fontmgr_t * arg0, sk_stream_asset_t * stream, int32_t index) {
  return moonbit_skia_typeface_make_owned(sk_fontmgr_create_from_stream(arg0, stream, index));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_fontmgr_create_from_file(sk_fontmgr_t * arg0, moonbit_bytes_t path, int32_t index) {
  return moonbit_skia_typeface_make_owned(sk_fontmgr_create_from_file(arg0, (const char *)path, index));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_fontmgr_legacy_create_typeface(sk_fontmgr_t * arg0, sk_fontstyle_t * style) {
  return moonbit_skia_typeface_make_owned(sk_fontmgr_legacy_create_typeface(arg0, NULL, style));
}

MOONBIT_FFI_EXPORT
sk_fontstyle_t * moonbit_skia_fontstyle_new(int32_t weight, int32_t width, sk_font_style_slant_t slant) {
  return sk_fontstyle_new(weight, width, slant);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_fontstyle_delete(sk_fontstyle_t * fs) {
  sk_fontstyle_delete(fs);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_fontstyle_get_weight(const sk_fontstyle_t * fs) {
  return sk_fontstyle_get_weight(fs);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_fontstyle_get_width(const sk_fontstyle_t * fs) {
  return sk_fontstyle_get_width(fs);
}

MOONBIT_FFI_EXPORT
sk_font_style_slant_t moonbit_skia_fontstyle_get_slant(const sk_fontstyle_t * fs) {
  return sk_fontstyle_get_slant(fs);
}

MOONBIT_FFI_EXPORT
sk_fontstyleset_t * moonbit_skia_fontstyleset_create_empty(void) {
  return sk_fontstyleset_create_empty();
}

MOONBIT_FFI_EXPORT
void moonbit_skia_fontstyleset_unref(sk_fontstyleset_t * fss) {
  sk_fontstyleset_unref(fss);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_fontstyleset_get_count(sk_fontstyleset_t * fss) {
  return sk_fontstyleset_get_count(fss);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_fontstyleset_get_style(sk_fontstyleset_t * fss, int32_t index, sk_fontstyle_t * fs, sk_string_t * style) {
  sk_fontstyleset_get_style(fss, index, fs, style);
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_fontstyleset_create_typeface(sk_fontstyleset_t * fss, int32_t index) {
  return moonbit_skia_typeface_make_owned(sk_fontstyleset_create_typeface(fss, index));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_fontstyleset_match_style(sk_fontstyleset_t * fss, sk_fontstyle_t * style) {
  return moonbit_skia_typeface_make_owned(sk_fontstyleset_match_style(fss, style));
}
