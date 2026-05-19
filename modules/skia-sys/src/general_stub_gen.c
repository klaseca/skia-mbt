// Generated file. Do not edit by hand.

#include <include/c/sk_general.h>
#include <moonbit.h>
#include <stdint.h>

moonbit_bytes_t moonbit_cstring_to_bytes_skia(const char *str);

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_refcnt_unique(const sk_refcnt_t * refcnt) {
  return sk_refcnt_unique(refcnt);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_refcnt_get_ref_count(const sk_refcnt_t * refcnt) {
  return sk_refcnt_get_ref_count(refcnt);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_refcnt_safe_ref(sk_refcnt_t * refcnt) {
  sk_refcnt_safe_ref(refcnt);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_refcnt_safe_unref(sk_refcnt_t * refcnt) {
  sk_refcnt_safe_unref(refcnt);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_nvrefcnt_unique(const sk_nvrefcnt_t * refcnt) {
  return sk_nvrefcnt_unique(refcnt);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_nvrefcnt_get_ref_count(const sk_nvrefcnt_t * refcnt) {
  return sk_nvrefcnt_get_ref_count(refcnt);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_nvrefcnt_safe_ref(sk_nvrefcnt_t * refcnt) {
  sk_nvrefcnt_safe_ref(refcnt);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_nvrefcnt_safe_unref(sk_nvrefcnt_t * refcnt) {
  sk_nvrefcnt_safe_unref(refcnt);
}

MOONBIT_FFI_EXPORT
sk_colortype_t moonbit_skia_colortype_get_default_8888(void) {
  return sk_colortype_get_default_8888();
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_version_get_milestone(void) {
  return sk_version_get_milestone();
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_version_get_increment(void) {
  return sk_version_get_increment();
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_version_get_string(void) {
  return moonbit_cstring_to_bytes_skia(sk_version_get_string());
}
