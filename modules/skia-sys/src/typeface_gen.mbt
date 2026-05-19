// Generated file. Do not edit by hand.

///|
#borrow(typeface)
pub extern "c" fn typeface_unref(typeface : Typeface) = "moonbit_skia_typeface_unref"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_fontstyle(typeface : Typeface) -> Fontstyle = "moonbit_skia_typeface_get_fontstyle"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_font_weight(typeface : Typeface) -> Int = "moonbit_skia_typeface_get_font_weight"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_font_width(typeface : Typeface) -> Int = "moonbit_skia_typeface_get_font_width"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_font_slant(typeface : Typeface) -> Int = "moonbit_skia_typeface_get_font_slant"

///|
#borrow(typeface)
pub extern "c" fn typeface_is_fixed_pitch(typeface : Typeface) -> Bool = "moonbit_skia_typeface_is_fixed_pitch"

///|
pub extern "c" fn typeface_create_empty() -> Typeface = "moonbit_skia_typeface_create_empty"

///|
#borrow(typeface)
pub extern "c" fn typeface_unichar_to_glyph(typeface : Typeface, unichar : Int) -> UInt16 = "moonbit_skia_typeface_unichar_to_glyph"

///|
#borrow(typeface)
pub extern "c" fn typeface_count_glyphs(typeface : Typeface) -> Int = "moonbit_skia_typeface_count_glyphs"

///|
#borrow(typeface)
pub extern "c" fn typeface_count_tables(typeface : Typeface) -> Int = "moonbit_skia_typeface_count_tables"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_table_size(typeface : Typeface, tag : UInt) -> UInt64 = "moonbit_skia_typeface_get_table_size"

///|
#borrow(typeface, data)
pub extern "c" fn typeface_get_table_data(typeface : Typeface, tag : UInt, offset : UInt64, length : UInt64, data : Bytes) -> UInt64 = "moonbit_skia_typeface_get_table_data"

///|
#borrow(typeface)
pub extern "c" fn typeface_copy_table_data(typeface : Typeface, tag : UInt) -> Data = "moonbit_skia_typeface_copy_table_data"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_units_per_em(typeface : Typeface) -> Int = "moonbit_skia_typeface_get_units_per_em"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_family_name(typeface : Typeface) -> StringLib = "moonbit_skia_typeface_get_family_name"

///|
#borrow(typeface)
pub extern "c" fn typeface_get_post_script_name(typeface : Typeface) -> StringLib = "moonbit_skia_typeface_get_post_script_name"

///|
#borrow(typeface, ttcIndex)
pub extern "c" fn typeface_open_stream(typeface : Typeface, ttcIndex : Ref[Int]) -> StreamAsset = "moonbit_skia_typeface_open_stream"

///|
pub extern "c" fn fontmgr_create_default() -> Fontmgr = "moonbit_skia_fontmgr_create_default"

///|
pub extern "c" fn fontmgr_unref(arg0 : Fontmgr) = "moonbit_skia_fontmgr_unref"

///|
pub extern "c" fn fontmgr_count_families(arg0 : Fontmgr) -> Int = "moonbit_skia_fontmgr_count_families"

///|
pub extern "c" fn fontmgr_get_family_name(arg0 : Fontmgr, index : Int, familyName : StringLib) = "moonbit_skia_fontmgr_get_family_name"

///|
pub extern "c" fn fontmgr_create_styleset(arg0 : Fontmgr, index : Int) -> Fontstyleset = "moonbit_skia_fontmgr_create_styleset"

///|
#borrow(familyName)
pub extern "c" fn fontmgr_match_family(arg0 : Fontmgr, familyName : Bytes) -> Fontstyleset = "moonbit_skia_fontmgr_match_family"

///|
#borrow(familyName)
pub extern "c" fn fontmgr_match_family_style(arg0 : Fontmgr, familyName : Bytes, style : Fontstyle) -> Typeface = "moonbit_skia_fontmgr_match_family_style"

///|
pub extern "c" fn fontmgr_create_from_data(arg0 : Fontmgr, data : Data, index : Int) -> Typeface = "moonbit_skia_fontmgr_create_from_data"

///|
pub extern "c" fn fontmgr_create_from_stream(arg0 : Fontmgr, stream : StreamAsset, index : Int) -> Typeface = "moonbit_skia_fontmgr_create_from_stream"

///|
#borrow(path)
pub extern "c" fn fontmgr_create_from_file(arg0 : Fontmgr, path : Bytes, index : Int) -> Typeface = "moonbit_skia_fontmgr_create_from_file"

///|
pub extern "c" fn fontmgr_legacy_create_typeface(arg0 : Fontmgr, style : Fontstyle) -> Typeface = "moonbit_skia_fontmgr_legacy_create_typeface"

///|
pub extern "c" fn fontstyle_new(weight : Int, width : Int, slant : Int) -> Fontstyle = "moonbit_skia_fontstyle_new"

///|
pub extern "c" fn fontstyle_delete(fs : Fontstyle) = "moonbit_skia_fontstyle_delete"

///|
pub extern "c" fn fontstyle_get_weight(fs : Fontstyle) -> Int = "moonbit_skia_fontstyle_get_weight"

///|
pub extern "c" fn fontstyle_get_width(fs : Fontstyle) -> Int = "moonbit_skia_fontstyle_get_width"

///|
pub extern "c" fn fontstyle_get_slant(fs : Fontstyle) -> Int = "moonbit_skia_fontstyle_get_slant"

///|
pub extern "c" fn fontstyleset_create_empty() -> Fontstyleset = "moonbit_skia_fontstyleset_create_empty"

///|
pub extern "c" fn fontstyleset_unref(fss : Fontstyleset) = "moonbit_skia_fontstyleset_unref"

///|
pub extern "c" fn fontstyleset_get_count(fss : Fontstyleset) -> Int = "moonbit_skia_fontstyleset_get_count"

///|
pub extern "c" fn fontstyleset_get_style(fss : Fontstyleset, index : Int, fs : Fontstyle, style : StringLib) = "moonbit_skia_fontstyleset_get_style"

///|
pub extern "c" fn fontstyleset_create_typeface(fss : Fontstyleset, index : Int) -> Typeface = "moonbit_skia_fontstyleset_create_typeface"

///|
pub extern "c" fn fontstyleset_match_style(fss : Fontstyleset, style : Fontstyle) -> Typeface = "moonbit_skia_fontstyleset_match_style"
