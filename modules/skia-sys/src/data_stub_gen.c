// Generated file. Do not edit by hand.

#include <include/c/sk_data.h>
#include <moonbit.h>
#include <stdint.h>

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_data_new_empty(void) {
  return sk_data_new_empty();
}

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_data_new_with_copy(moonbit_bytes_t src, uint64_t length) {
  return sk_data_new_with_copy(((const void *)src), length);
}

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_data_new_subset(const sk_data_t * src, uint64_t offset, uint64_t length) {
  return sk_data_new_subset(src, offset, length);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_data_ref(const sk_data_t * arg0) {
  sk_data_ref(arg0);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_data_unref(const sk_data_t * arg0) {
  sk_data_unref(arg0);
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_data_get_size(const sk_data_t * arg0) {
  return sk_data_get_size(arg0);
}

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_data_new_from_file(moonbit_bytes_t path) {
  return sk_data_new_from_file((const char *)path);
}

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_data_new_from_stream(sk_stream_t * stream, uint64_t length) {
  return sk_data_new_from_stream(stream, length);
}

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_data_new_uninitialized(uint64_t size) {
  return sk_data_new_uninitialized(size);
}
