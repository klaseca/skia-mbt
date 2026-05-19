// Generated file. Do not edit by hand.

///|
pub extern "c" fn refcnt_unique(refcnt : Refcnt) -> Bool = "moonbit_skia_refcnt_unique"

///|
pub extern "c" fn refcnt_get_ref_count(refcnt : Refcnt) -> Int = "moonbit_skia_refcnt_get_ref_count"

///|
pub extern "c" fn refcnt_safe_ref(refcnt : Refcnt) = "moonbit_skia_refcnt_safe_ref"

///|
pub extern "c" fn refcnt_safe_unref(refcnt : Refcnt) = "moonbit_skia_refcnt_safe_unref"

///|
pub extern "c" fn nvrefcnt_unique(refcnt : Nvrefcnt) -> Bool = "moonbit_skia_nvrefcnt_unique"

///|
pub extern "c" fn nvrefcnt_get_ref_count(refcnt : Nvrefcnt) -> Int = "moonbit_skia_nvrefcnt_get_ref_count"

///|
pub extern "c" fn nvrefcnt_safe_ref(refcnt : Nvrefcnt) = "moonbit_skia_nvrefcnt_safe_ref"

///|
pub extern "c" fn nvrefcnt_safe_unref(refcnt : Nvrefcnt) = "moonbit_skia_nvrefcnt_safe_unref"

///|
pub extern "c" fn colortype_get_default_8888() -> Int = "moonbit_skia_colortype_get_default_8888"

///|
pub extern "c" fn version_get_milestone() -> Int = "moonbit_skia_version_get_milestone"

///|
pub extern "c" fn version_get_increment() -> Int = "moonbit_skia_version_get_increment"

///|
pub extern "c" fn version_get_string() -> Bytes = "moonbit_skia_version_get_string"
