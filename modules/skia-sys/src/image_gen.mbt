// Generated file. Do not edit by hand.

///|
pub extern "c" fn image_ref(cimage : Image) = "moonbit_skia_image_ref"

///|
pub extern "c" fn image_unref(cimage : Image) = "moonbit_skia_image_unref"

///|
#borrow(cinfo, pixels)
extern "c" fn image_new_raster_copy_ffi(cinfo : Bytes, pixels : Bytes, rowBytes : UInt64) -> Image = "moonbit_skia_image_new_raster_copy_ffi"

///|
pub fn image_new_raster_copy(cinfo : Imageinfo, pixels : Bytes, rowBytes : UInt64) -> Image {
  image_new_raster_copy_ffi(cinfo.to_bytes(), pixels, rowBytes)
}

///|
pub extern "c" fn image_new_raster_copy_with_pixmap(pixmap : Pixmap) -> Image = "moonbit_skia_image_new_raster_copy_with_pixmap"

///|
#borrow(cinfo)
extern "c" fn image_new_raster_data_ffi(cinfo : Bytes, pixels : Data, rowBytes : UInt64) -> Image = "moonbit_skia_image_new_raster_data_ffi"

///|
pub fn image_new_raster_data(cinfo : Imageinfo, pixels : Data, rowBytes : UInt64) -> Image {
  image_new_raster_data_ffi(cinfo.to_bytes(), pixels, rowBytes)
}

///|
pub extern "c" fn image_new_from_bitmap(cbitmap : Bitmap) -> Image = "moonbit_skia_image_new_from_bitmap"

///|
pub extern "c" fn image_new_from_encoded(cdata : Data) -> Image = "moonbit_skia_image_new_from_encoded"

///|
pub extern "c" fn image_new_from_adopted_texture(context : GrRecordingContext, texture : GrBackendtexture, origin : Int, colorType : Int, alpha : Int, colorSpace : Colorspace) -> Image = "moonbit_skia_image_new_from_adopted_texture"

///|
#borrow(dimensions, cmatrix, paint)
extern "c" fn image_new_from_picture_ffi(picture : Picture, dimensions : Bytes, cmatrix : Bytes, paint : Paint, useFloatingPointBitDepth : Bool, colorSpace : Colorspace, props : Surfaceprops) -> Image = "moonbit_skia_image_new_from_picture_ffi"

///|
pub fn image_new_from_picture(picture : Picture, dimensions : Isize, cmatrix : Matrix, paint : Paint, useFloatingPointBitDepth : Bool, colorSpace : Colorspace, props : Surfaceprops) -> Image {
  image_new_from_picture_ffi(picture, dimensions.to_bytes(), cmatrix.to_bytes(), paint, useFloatingPointBitDepth, colorSpace, props)
}

///|
pub extern "c" fn image_get_width(cimage : Image) -> Int = "moonbit_skia_image_get_width"

///|
pub extern "c" fn image_get_height(cimage : Image) -> Int = "moonbit_skia_image_get_height"

///|
pub extern "c" fn image_get_unique_id(cimage : Image) -> UInt = "moonbit_skia_image_get_unique_id"

///|
pub extern "c" fn image_get_alpha_type(image : Image) -> Int = "moonbit_skia_image_get_alpha_type"

///|
pub extern "c" fn image_get_color_type(image : Image) -> Int = "moonbit_skia_image_get_color_type"

///|
pub extern "c" fn image_get_colorspace(image : Image) -> Colorspace = "moonbit_skia_image_get_colorspace"

///|
pub extern "c" fn image_is_alpha_only(image : Image) -> Bool = "moonbit_skia_image_is_alpha_only"

///|
pub extern "c" fn image_peek_pixels(image : Image, pixmap : Pixmap) -> Bool = "moonbit_skia_image_peek_pixels"

///|
pub extern "c" fn image_is_texture_backed(image : Image) -> Bool = "moonbit_skia_image_is_texture_backed"

///|
pub extern "c" fn image_is_lazy_generated(image : Image) -> Bool = "moonbit_skia_image_is_lazy_generated"

///|
pub extern "c" fn image_is_valid(image : Image, context : GrRecordingContext) -> Bool = "moonbit_skia_image_is_valid"

///|
#borrow(dstInfo, dstPixels)
extern "c" fn image_read_pixels_ffi(image : Image, dstInfo : Bytes, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int, srcY : Int, cachingHint : Int) -> Bool = "moonbit_skia_image_read_pixels_ffi"

///|
pub fn image_read_pixels(image : Image, dstInfo : Imageinfo, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int, srcY : Int, cachingHint : Int) -> Bool {
  image_read_pixels_ffi(image, dstInfo.to_bytes(), dstPixels, dstRowBytes, srcX, srcY, cachingHint)
}

///|
pub extern "c" fn image_read_pixels_into_pixmap(image : Image, dst : Pixmap, srcX : Int, srcY : Int, cachingHint : Int) -> Bool = "moonbit_skia_image_read_pixels_into_pixmap"

///|
pub extern "c" fn image_ref_encoded(cimage : Image) -> Data = "moonbit_skia_image_ref_encoded"

///|
#borrow(subset)
extern "c" fn image_make_subset_raster_ffi(cimage : Image, subset : Bytes) -> Image = "moonbit_skia_image_make_subset_raster_ffi"

///|
pub fn image_make_subset_raster(cimage : Image, subset : Irect) -> Image {
  image_make_subset_raster_ffi(cimage, subset.to_bytes())
}

///|
#borrow(subset)
extern "c" fn image_make_subset_ffi(cimage : Image, context : GrDirectContext, subset : Bytes) -> Image = "moonbit_skia_image_make_subset_ffi"

///|
pub fn image_make_subset(cimage : Image, context : GrDirectContext, subset : Irect) -> Image {
  image_make_subset_ffi(cimage, context, subset.to_bytes())
}

///|
pub extern "c" fn image_make_texture_image(cimage : Image, context : GrDirectContext, mipmapped : Bool, budgeted : Bool) -> Image = "moonbit_skia_image_make_texture_image"

///|
pub extern "c" fn image_make_non_texture_image(cimage : Image) -> Image = "moonbit_skia_image_make_non_texture_image"

///|
pub extern "c" fn image_make_raster_image(cimage : Image) -> Image = "moonbit_skia_image_make_raster_image"

///|
#borrow(subset, clipBounds, outSubset, outOffset)
extern "c" fn image_make_with_filter_raster_ffi(cimage : Image, filter : Imagefilter, subset : Bytes, clipBounds : Bytes, outSubset : Bytes, outOffset : Bytes) -> Image = "moonbit_skia_image_make_with_filter_raster_ffi"

///|
pub fn image_make_with_filter_raster(cimage : Image, filter : Imagefilter, subset : Irect, clipBounds : Irect, outSubset : Irect, outOffset : Ipoint) -> Image {
  image_make_with_filter_raster_ffi(cimage, filter, subset.to_bytes(), clipBounds.to_bytes(), outSubset.to_bytes(), outOffset.to_bytes())
}

///|
#borrow(subset, clipBounds, outSubset, outOffset)
extern "c" fn image_make_with_filter_ffi(cimage : Image, context : GrRecordingContext, filter : Imagefilter, subset : Bytes, clipBounds : Bytes, outSubset : Bytes, outOffset : Bytes) -> Image = "moonbit_skia_image_make_with_filter_ffi"

///|
pub fn image_make_with_filter(cimage : Image, context : GrRecordingContext, filter : Imagefilter, subset : Irect, clipBounds : Irect, outSubset : Irect, outOffset : Ipoint) -> Image {
  image_make_with_filter_ffi(cimage, context, filter, subset.to_bytes(), clipBounds.to_bytes(), outSubset.to_bytes(), outOffset.to_bytes())
}
