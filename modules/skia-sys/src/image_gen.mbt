// Generated file. Do not edit by hand.

///|
#borrow(cimage)
pub extern "c" fn image_ref(cimage : Image) = "moonbit_skia_image_ref"

///|
#borrow(cimage)
pub extern "c" fn image_unref(cimage : Image) = "moonbit_skia_image_unref"

///|
#borrow(cinfo, pixels)
extern "c" fn image_new_raster_copy_ffi(cinfo : Bytes, cinfo_offset : Int32, pixels : Bytes, rowBytes : UInt64) -> Image = "moonbit_skia_image_new_raster_copy_ffi"

///|
pub fn image_new_raster_copy(cinfo : Imageinfo, pixels : Bytes, rowBytes : UInt64) -> Image {
  image_new_raster_copy_ffi(cinfo.bytes, cinfo.offset, pixels, rowBytes)
}

///|
pub extern "c" fn image_new_raster_copy_with_pixmap(pixmap : Pixmap) -> Image = "moonbit_skia_image_new_raster_copy_with_pixmap"

///|
#borrow(cinfo, pixels)
extern "c" fn image_new_raster_data_ffi(cinfo : Bytes, cinfo_offset : Int32, pixels : Data, rowBytes : UInt64) -> Image = "moonbit_skia_image_new_raster_data_ffi"

///|
pub fn image_new_raster_data(cinfo : Imageinfo, pixels : Data, rowBytes : UInt64) -> Image {
  image_new_raster_data_ffi(cinfo.bytes, cinfo.offset, pixels, rowBytes)
}

///|
pub extern "c" fn image_new_from_bitmap(cbitmap : Bitmap) -> Image = "moonbit_skia_image_new_from_bitmap"

///|
#borrow(cdata)
pub extern "c" fn image_new_from_encoded(cdata : Data) -> Image = "moonbit_skia_image_new_from_encoded"

///|
pub extern "c" fn image_new_from_adopted_texture(context : GrRecordingContext, texture : GrBackendtexture, origin : Int32, colorType : Int32, alpha : Int32, colorSpace : Colorspace) -> Image = "moonbit_skia_image_new_from_adopted_texture"

///|
#borrow(dimensions, cmatrix, paint)
extern "c" fn image_new_from_picture_ffi(picture : Picture, dimensions : Bytes, dimensions_offset : Int32, cmatrix : Bytes, cmatrix_offset : Int32, paint : Paint, useFloatingPointBitDepth : Bool, colorSpace : Colorspace, props : Surfaceprops) -> Image = "moonbit_skia_image_new_from_picture_ffi"

///|
pub fn image_new_from_picture(picture : Picture, dimensions : Isize, cmatrix : Matrix, paint : Paint, useFloatingPointBitDepth : Bool, colorSpace : Colorspace, props : Surfaceprops) -> Image {
  image_new_from_picture_ffi(picture, dimensions.bytes, dimensions.offset, cmatrix.bytes, cmatrix.offset, paint, useFloatingPointBitDepth, colorSpace, props)
}

///|
#borrow(cimage)
pub extern "c" fn image_get_width(cimage : Image) -> Int32 = "moonbit_skia_image_get_width"

///|
#borrow(cimage)
pub extern "c" fn image_get_height(cimage : Image) -> Int32 = "moonbit_skia_image_get_height"

///|
#borrow(cimage)
pub extern "c" fn image_get_unique_id(cimage : Image) -> UInt32 = "moonbit_skia_image_get_unique_id"

///|
#borrow(image)
pub extern "c" fn image_get_alpha_type(image : Image) -> Int32 = "moonbit_skia_image_get_alpha_type"

///|
#borrow(image)
pub extern "c" fn image_get_color_type(image : Image) -> Int32 = "moonbit_skia_image_get_color_type"

///|
#borrow(image)
pub extern "c" fn image_get_colorspace(image : Image) -> Colorspace = "moonbit_skia_image_get_colorspace"

///|
#borrow(image)
pub extern "c" fn image_is_alpha_only(image : Image) -> Bool = "moonbit_skia_image_is_alpha_only"

///|
#borrow(image, sampling, cmatrix)
extern "c" fn image_make_shader_ffi(image : Image, tileX : Int32, tileY : Int32, sampling : Bytes, sampling_offset : Int32, cmatrix : Bytes, cmatrix_offset : Int32) -> Shader = "moonbit_skia_image_make_shader_ffi"

///|
pub fn image_make_shader(image : Image, tileX : Int32, tileY : Int32, sampling : SamplingOptions, cmatrix : Matrix) -> Shader {
  image_make_shader_ffi(image, tileX, tileY, sampling.bytes, sampling.offset, cmatrix.bytes, cmatrix.offset)
}

///|
#borrow(image, sampling, cmatrix)
extern "c" fn image_make_raw_shader_ffi(image : Image, tileX : Int32, tileY : Int32, sampling : Bytes, sampling_offset : Int32, cmatrix : Bytes, cmatrix_offset : Int32) -> Shader = "moonbit_skia_image_make_raw_shader_ffi"

///|
pub fn image_make_raw_shader(image : Image, tileX : Int32, tileY : Int32, sampling : SamplingOptions, cmatrix : Matrix) -> Shader {
  image_make_raw_shader_ffi(image, tileX, tileY, sampling.bytes, sampling.offset, cmatrix.bytes, cmatrix.offset)
}

///|
#borrow(image)
pub extern "c" fn image_peek_pixels(image : Image, pixmap : Pixmap) -> Bool = "moonbit_skia_image_peek_pixels"

///|
#borrow(image)
pub extern "c" fn image_is_texture_backed(image : Image) -> Bool = "moonbit_skia_image_is_texture_backed"

///|
#borrow(image)
pub extern "c" fn image_is_lazy_generated(image : Image) -> Bool = "moonbit_skia_image_is_lazy_generated"

///|
#borrow(image)
pub extern "c" fn image_is_valid(image : Image, context : GrRecordingContext) -> Bool = "moonbit_skia_image_is_valid"

///|
#borrow(image, dstInfo, dstPixels)
extern "c" fn image_read_pixels_ffi(image : Image, dstInfo : Bytes, dstInfo_offset : Int32, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int32, srcY : Int32, cachingHint : Int32) -> Bool = "moonbit_skia_image_read_pixels_ffi"

///|
pub fn image_read_pixels(image : Image, dstInfo : Imageinfo, dstPixels : Bytes, dstRowBytes : UInt64, srcX : Int32, srcY : Int32, cachingHint : Int32) -> Bool {
  image_read_pixels_ffi(image, dstInfo.bytes, dstInfo.offset, dstPixels, dstRowBytes, srcX, srcY, cachingHint)
}

///|
#borrow(image)
pub extern "c" fn image_read_pixels_into_pixmap(image : Image, dst : Pixmap, srcX : Int32, srcY : Int32, cachingHint : Int32) -> Bool = "moonbit_skia_image_read_pixels_into_pixmap"

///|
#borrow(image, sampling)
extern "c" fn image_scale_pixels_ffi(image : Image, dst : Pixmap, sampling : Bytes, sampling_offset : Int32, cachingHint : Int32) -> Bool = "moonbit_skia_image_scale_pixels_ffi"

///|
pub fn image_scale_pixels(image : Image, dst : Pixmap, sampling : SamplingOptions, cachingHint : Int32) -> Bool {
  image_scale_pixels_ffi(image, dst, sampling.bytes, sampling.offset, cachingHint)
}

///|
#borrow(cimage)
pub extern "c" fn image_ref_encoded(cimage : Image) -> Data = "moonbit_skia_image_ref_encoded"

///|
#borrow(cimage, subset)
extern "c" fn image_make_subset_raster_ffi(cimage : Image, subset : Bytes, subset_offset : Int32) -> Image = "moonbit_skia_image_make_subset_raster_ffi"

///|
pub fn image_make_subset_raster(cimage : Image, subset : Irect) -> Image {
  image_make_subset_raster_ffi(cimage, subset.bytes, subset.offset)
}

///|
#borrow(cimage, subset)
extern "c" fn image_make_subset_ffi(cimage : Image, context : GrDirectContext, subset : Bytes, subset_offset : Int32) -> Image = "moonbit_skia_image_make_subset_ffi"

///|
pub fn image_make_subset(cimage : Image, context : GrDirectContext, subset : Irect) -> Image {
  image_make_subset_ffi(cimage, context, subset.bytes, subset.offset)
}

///|
#borrow(cimage)
pub extern "c" fn image_make_texture_image(cimage : Image, context : GrDirectContext, mipmapped : Bool, budgeted : Bool) -> Image = "moonbit_skia_image_make_texture_image"

///|
#borrow(cimage)
pub extern "c" fn image_make_non_texture_image(cimage : Image) -> Image = "moonbit_skia_image_make_non_texture_image"

///|
#borrow(cimage)
pub extern "c" fn image_make_raster_image(cimage : Image) -> Image = "moonbit_skia_image_make_raster_image"

///|
#borrow(cimage, subset, clipBounds, outSubset, outOffset)
extern "c" fn image_make_with_filter_raster_ffi(cimage : Image, filter : Imagefilter, subset : Bytes, subset_offset : Int32, clipBounds : Bytes, clipBounds_offset : Int32, outSubset : Bytes, outSubset_offset : Int32, outOffset : Bytes, outOffset_offset : Int32) -> Image = "moonbit_skia_image_make_with_filter_raster_ffi"

///|
pub fn image_make_with_filter_raster(cimage : Image, filter : Imagefilter, subset : Irect, clipBounds : Irect, outSubset : Irect, outOffset : Ipoint) -> Image {
  image_make_with_filter_raster_ffi(cimage, filter, subset.bytes, subset.offset, clipBounds.bytes, clipBounds.offset, outSubset.bytes, outSubset.offset, outOffset.bytes, outOffset.offset)
}

///|
#borrow(cimage, subset, clipBounds, outSubset, outOffset)
extern "c" fn image_make_with_filter_ffi(cimage : Image, context : GrRecordingContext, filter : Imagefilter, subset : Bytes, subset_offset : Int32, clipBounds : Bytes, clipBounds_offset : Int32, outSubset : Bytes, outSubset_offset : Int32, outOffset : Bytes, outOffset_offset : Int32) -> Image = "moonbit_skia_image_make_with_filter_ffi"

///|
pub fn image_make_with_filter(cimage : Image, context : GrRecordingContext, filter : Imagefilter, subset : Irect, clipBounds : Irect, outSubset : Irect, outOffset : Ipoint) -> Image {
  image_make_with_filter_ffi(cimage, context, filter, subset.bytes, subset.offset, clipBounds.bytes, clipBounds.offset, outSubset.bytes, outSubset.offset, outOffset.bytes, outOffset.offset)
}
