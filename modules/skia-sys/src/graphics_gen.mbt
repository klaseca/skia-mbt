// Generated file. Do not edit by hand.

///|
pub extern "c" fn graphics_init() = "moonbit_skia_graphics_init"

///|
pub extern "c" fn graphics_purge_font_cache() = "moonbit_skia_graphics_purge_font_cache"

///|
pub extern "c" fn graphics_purge_resource_cache() = "moonbit_skia_graphics_purge_resource_cache"

///|
pub extern "c" fn graphics_purge_all_caches() = "moonbit_skia_graphics_purge_all_caches"

///|
pub extern "c" fn graphics_get_font_cache_used() -> UInt64 = "moonbit_skia_graphics_get_font_cache_used"

///|
pub extern "c" fn graphics_get_font_cache_limit() -> UInt64 = "moonbit_skia_graphics_get_font_cache_limit"

///|
pub extern "c" fn graphics_set_font_cache_limit(bytes : UInt64) -> UInt64 = "moonbit_skia_graphics_set_font_cache_limit"

///|
pub extern "c" fn graphics_get_font_cache_count_used() -> Int = "moonbit_skia_graphics_get_font_cache_count_used"

///|
pub extern "c" fn graphics_get_font_cache_count_limit() -> Int = "moonbit_skia_graphics_get_font_cache_count_limit"

///|
pub extern "c" fn graphics_set_font_cache_count_limit(count : Int) -> Int = "moonbit_skia_graphics_set_font_cache_count_limit"

///|
pub extern "c" fn graphics_get_resource_cache_total_bytes_used() -> UInt64 = "moonbit_skia_graphics_get_resource_cache_total_bytes_used"

///|
pub extern "c" fn graphics_get_resource_cache_total_byte_limit() -> UInt64 = "moonbit_skia_graphics_get_resource_cache_total_byte_limit"

///|
pub extern "c" fn graphics_set_resource_cache_total_byte_limit(newLimit : UInt64) -> UInt64 = "moonbit_skia_graphics_set_resource_cache_total_byte_limit"

///|
pub extern "c" fn graphics_get_resource_cache_single_allocation_byte_limit() -> UInt64 = "moonbit_skia_graphics_get_resource_cache_single_allocation_byte_limit"

///|
pub extern "c" fn graphics_set_resource_cache_single_allocation_byte_limit(newLimit : UInt64) -> UInt64 = "moonbit_skia_graphics_set_resource_cache_single_allocation_byte_limit"

///|
pub extern "c" fn graphics_dump_memory_statistics(dump : Tracememorydump) = "moonbit_skia_graphics_dump_memory_statistics"
