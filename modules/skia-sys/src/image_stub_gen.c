// Generated file. Do not edit by hand.

#include <include/c/sk_image.h>
#include <moonbit.h>
#include <stdint.h>

sk_paint_t *moonbit_skia_paint_ptr(void *self);

MOONBIT_FFI_EXPORT
void moonbit_skia_image_ref(const sk_image_t * cimage) {
  sk_image_ref(cimage);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_image_unref(const sk_image_t * cimage) {
  sk_image_unref(cimage);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_new_raster_copy_ffi(moonbit_bytes_t cinfo, moonbit_bytes_t pixels, uint64_t rowBytes) {
  return sk_image_new_raster_copy(((const sk_imageinfo_t *)cinfo), ((const void *)pixels), rowBytes);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_new_raster_copy_with_pixmap(const sk_pixmap_t * pixmap) {
  return sk_image_new_raster_copy_with_pixmap(pixmap);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_new_raster_data_ffi(moonbit_bytes_t cinfo, sk_data_t * pixels, uint64_t rowBytes) {
  return sk_image_new_raster_data(((const sk_imageinfo_t *)cinfo), pixels, rowBytes);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_new_from_bitmap(const sk_bitmap_t * cbitmap) {
  return sk_image_new_from_bitmap(cbitmap);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_new_from_encoded(const sk_data_t * cdata) {
  return sk_image_new_from_encoded(cdata);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_new_from_adopted_texture(gr_recording_context_t * context, const gr_backendtexture_t * texture, gr_surfaceorigin_t origin, sk_colortype_t colorType, sk_alphatype_t alpha, const sk_colorspace_t * colorSpace) {
  return sk_image_new_from_adopted_texture(context, texture, origin, colorType, alpha, colorSpace);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_new_from_picture_ffi(sk_picture_t * picture, moonbit_bytes_t dimensions, moonbit_bytes_t cmatrix, void * paint, int32_t useFloatingPointBitDepth, const sk_colorspace_t * colorSpace, const sk_surfaceprops_t * props) {
  return sk_image_new_from_picture(picture, ((const sk_isize_t *)dimensions), ((const sk_matrix_t *)cmatrix), moonbit_skia_paint_ptr(paint), useFloatingPointBitDepth, colorSpace, props);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_get_width(const sk_image_t * cimage) {
  return sk_image_get_width(cimage);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_get_height(const sk_image_t * cimage) {
  return sk_image_get_height(cimage);
}

MOONBIT_FFI_EXPORT
uint32_t moonbit_skia_image_get_unique_id(const sk_image_t * cimage) {
  return sk_image_get_unique_id(cimage);
}

MOONBIT_FFI_EXPORT
sk_alphatype_t moonbit_skia_image_get_alpha_type(const sk_image_t * image) {
  return sk_image_get_alpha_type(image);
}

MOONBIT_FFI_EXPORT
sk_colortype_t moonbit_skia_image_get_color_type(const sk_image_t * image) {
  return sk_image_get_color_type(image);
}

MOONBIT_FFI_EXPORT
sk_colorspace_t * moonbit_skia_image_get_colorspace(const sk_image_t * image) {
  return sk_image_get_colorspace(image);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_alpha_only(const sk_image_t * image) {
  return sk_image_is_alpha_only(image);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_peek_pixels(const sk_image_t * image, sk_pixmap_t * pixmap) {
  return sk_image_peek_pixels(image, pixmap);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_texture_backed(const sk_image_t * image) {
  return sk_image_is_texture_backed(image);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_lazy_generated(const sk_image_t * image) {
  return sk_image_is_lazy_generated(image);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_valid(const sk_image_t * image, gr_recording_context_t * context) {
  return sk_image_is_valid(image, context);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_read_pixels_ffi(const sk_image_t * image, moonbit_bytes_t dstInfo, moonbit_bytes_t dstPixels, uint64_t dstRowBytes, int32_t srcX, int32_t srcY, sk_image_caching_hint_t cachingHint) {
  return sk_image_read_pixels(image, ((const sk_imageinfo_t *)dstInfo), ((void *)dstPixels), dstRowBytes, srcX, srcY, cachingHint);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_read_pixels_into_pixmap(const sk_image_t * image, const sk_pixmap_t * dst, int32_t srcX, int32_t srcY, sk_image_caching_hint_t cachingHint) {
  return sk_image_read_pixels_into_pixmap(image, dst, srcX, srcY, cachingHint);
}

MOONBIT_FFI_EXPORT
sk_data_t * moonbit_skia_image_ref_encoded(const sk_image_t * cimage) {
  return sk_image_ref_encoded(cimage);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_make_subset_raster_ffi(const sk_image_t * cimage, moonbit_bytes_t subset) {
  return sk_image_make_subset_raster(cimage, ((const sk_irect_t *)subset));
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_make_subset_ffi(const sk_image_t * cimage, gr_direct_context_t * context, moonbit_bytes_t subset) {
  return sk_image_make_subset(cimage, context, ((const sk_irect_t *)subset));
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_make_texture_image(const sk_image_t * cimage, gr_direct_context_t * context, int32_t mipmapped, int32_t budgeted) {
  return sk_image_make_texture_image(cimage, context, mipmapped, budgeted);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_make_non_texture_image(const sk_image_t * cimage) {
  return sk_image_make_non_texture_image(cimage);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_make_raster_image(const sk_image_t * cimage) {
  return sk_image_make_raster_image(cimage);
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_make_with_filter_raster_ffi(const sk_image_t * cimage, const sk_imagefilter_t * filter, moonbit_bytes_t subset, moonbit_bytes_t clipBounds, moonbit_bytes_t outSubset, moonbit_bytes_t outOffset) {
  return sk_image_make_with_filter_raster(cimage, filter, ((const sk_irect_t *)subset), ((const sk_irect_t *)clipBounds), ((sk_irect_t *)outSubset), ((sk_ipoint_t *)outOffset));
}

MOONBIT_FFI_EXPORT
sk_image_t * moonbit_skia_image_make_with_filter_ffi(const sk_image_t * cimage, gr_recording_context_t * context, const sk_imagefilter_t * filter, moonbit_bytes_t subset, moonbit_bytes_t clipBounds, moonbit_bytes_t outSubset, moonbit_bytes_t outOffset) {
  return sk_image_make_with_filter(cimage, context, filter, ((const sk_irect_t *)subset), ((const sk_irect_t *)clipBounds), ((sk_irect_t *)outSubset), ((sk_ipoint_t *)outOffset));
}
