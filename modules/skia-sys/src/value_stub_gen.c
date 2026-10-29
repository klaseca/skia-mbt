// Generated file. Do not edit by hand.

#include <moonbit.h>
#include <stdint.h>
#include <string.h>

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_value_little_endian(void) {
  const uint16_t value = 1;
  return ((const uint8_t *)&value)[0] == 1;
}

MOONBIT_FFI_EXPORT
void *moonbit_skia_value_read_pointer(moonbit_bytes_t bytes, int32_t offset) {
  void *value;
  memcpy(&value, bytes + offset, sizeof(value));
  return value;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_value_copy_bytes(moonbit_bytes_t bytes, int32_t offset, int32_t size) {
  moonbit_bytes_t result = moonbit_make_bytes(size, 0);
  memcpy(result, bytes + offset, size);
  return result;
}
