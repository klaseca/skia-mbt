// Generated file. Do not edit by hand.

#include <include/c/sk_graphics.h>
#include <moonbit.h>
#include <stdint.h>

MOONBIT_FFI_EXPORT
void moonbit_skia_graphics_init(void) {
  sk_graphics_init();
}

MOONBIT_FFI_EXPORT
void moonbit_skia_graphics_purge_font_cache(void) {
  sk_graphics_purge_font_cache();
}

MOONBIT_FFI_EXPORT
void moonbit_skia_graphics_purge_resource_cache(void) {
  sk_graphics_purge_resource_cache();
}

MOONBIT_FFI_EXPORT
void moonbit_skia_graphics_purge_all_caches(void) {
  sk_graphics_purge_all_caches();
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_get_font_cache_used(void) {
  return sk_graphics_get_font_cache_used();
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_get_font_cache_limit(void) {
  return sk_graphics_get_font_cache_limit();
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_set_font_cache_limit(uint64_t bytes) {
  return sk_graphics_set_font_cache_limit(bytes);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_graphics_get_font_cache_count_used(void) {
  return sk_graphics_get_font_cache_count_used();
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_graphics_get_font_cache_count_limit(void) {
  return sk_graphics_get_font_cache_count_limit();
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_graphics_set_font_cache_count_limit(int32_t count) {
  return sk_graphics_set_font_cache_count_limit(count);
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_get_resource_cache_total_bytes_used(void) {
  return sk_graphics_get_resource_cache_total_bytes_used();
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_get_resource_cache_total_byte_limit(void) {
  return sk_graphics_get_resource_cache_total_byte_limit();
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_set_resource_cache_total_byte_limit(uint64_t newLimit) {
  return sk_graphics_set_resource_cache_total_byte_limit(newLimit);
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_get_resource_cache_single_allocation_byte_limit(void) {
  return sk_graphics_get_resource_cache_single_allocation_byte_limit();
}

MOONBIT_FFI_EXPORT
uint64_t moonbit_skia_graphics_set_resource_cache_single_allocation_byte_limit(uint64_t newLimit) {
  return sk_graphics_set_resource_cache_single_allocation_byte_limit(newLimit);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_graphics_dump_memory_statistics(sk_tracememorydump_t * dump) {
  sk_graphics_dump_memory_statistics(dump);
}
