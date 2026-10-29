// Generated file. Do not edit by hand.

#include <include/c/sk_image.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  sk_image_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_image_resource_t;

static void moonbit_skia_image_release(void *ptr) {
  if (ptr != NULL) sk_image_unref((const sk_image_t *)ptr);
}

static void moonbit_skia_image_finalize(void *self) {
  moonbit_skia_image_resource_t *resource = (moonbit_skia_image_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_image_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_image_unref(void *self) {
  moonbit_skia_image_finalize(self);
}

sk_image_t *moonbit_skia_image_ptr(void *self) {
  moonbit_skia_image_resource_t *resource = (moonbit_skia_image_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_image_make(sk_image_t *ptr, int32_t owns_ptr) {
  moonbit_skia_image_resource_t *resource = (moonbit_skia_image_resource_t *)moonbit_make_external_object(
    moonbit_skia_image_finalize, sizeof(moonbit_skia_image_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_image_make_owned(sk_image_t *ptr) {
  return moonbit_skia_image_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_null(void *self) {
  return moonbit_skia_image_ptr(self) == NULL;
}

sk_data_t *moonbit_skia_data_ptr(void *self);
void *moonbit_skia_data_make_owned(sk_data_t *ptr);

sk_paint_t *moonbit_skia_paint_ptr(void *self);

MOONBIT_FFI_EXPORT
void moonbit_skia_image_ref(void * cimage) {
  sk_image_ref(moonbit_skia_image_ptr(cimage));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_new_raster_copy_ffi(moonbit_bytes_t cinfo, int32_t cinfo_offset, moonbit_bytes_t pixels, uint64_t rowBytes) {
  return moonbit_skia_image_make_owned(sk_image_new_raster_copy(((const sk_imageinfo_t *)(cinfo + cinfo_offset)), ((const void *)pixels), rowBytes));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_new_raster_copy_with_pixmap(const sk_pixmap_t * pixmap) {
  return moonbit_skia_image_make_owned(sk_image_new_raster_copy_with_pixmap(pixmap));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_new_raster_data_ffi(moonbit_bytes_t cinfo, int32_t cinfo_offset, void * pixels, uint64_t rowBytes) {
  return moonbit_skia_image_make_owned(sk_image_new_raster_data(((const sk_imageinfo_t *)(cinfo + cinfo_offset)), moonbit_skia_data_ptr(pixels), rowBytes));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_new_from_bitmap(const sk_bitmap_t * cbitmap) {
  return moonbit_skia_image_make_owned(sk_image_new_from_bitmap(cbitmap));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_new_from_encoded(void * cdata) {
  return moonbit_skia_image_make_owned(sk_image_new_from_encoded(moonbit_skia_data_ptr(cdata)));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_new_from_adopted_texture(gr_recording_context_t * context, const gr_backendtexture_t * texture, gr_surfaceorigin_t origin, sk_colortype_t colorType, sk_alphatype_t alpha, const sk_colorspace_t * colorSpace) {
  return moonbit_skia_image_make_owned(sk_image_new_from_adopted_texture(context, texture, origin, colorType, alpha, colorSpace));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_new_from_picture_ffi(sk_picture_t * picture, moonbit_bytes_t dimensions, int32_t dimensions_offset, moonbit_bytes_t cmatrix, int32_t cmatrix_offset, void * paint, int32_t useFloatingPointBitDepth, const sk_colorspace_t * colorSpace, const sk_surfaceprops_t * props) {
  return moonbit_skia_image_make_owned(sk_image_new_from_picture(picture, ((const sk_isize_t *)(dimensions + dimensions_offset)), ((const sk_matrix_t *)(cmatrix + cmatrix_offset)), moonbit_skia_paint_ptr(paint), useFloatingPointBitDepth, colorSpace, props));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_get_width(void * cimage) {
  return sk_image_get_width(moonbit_skia_image_ptr(cimage));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_get_height(void * cimage) {
  return sk_image_get_height(moonbit_skia_image_ptr(cimage));
}

MOONBIT_FFI_EXPORT
uint32_t moonbit_skia_image_get_unique_id(void * cimage) {
  return sk_image_get_unique_id(moonbit_skia_image_ptr(cimage));
}

MOONBIT_FFI_EXPORT
sk_alphatype_t moonbit_skia_image_get_alpha_type(void * image) {
  return sk_image_get_alpha_type(moonbit_skia_image_ptr(image));
}

MOONBIT_FFI_EXPORT
sk_colortype_t moonbit_skia_image_get_color_type(void * image) {
  return sk_image_get_color_type(moonbit_skia_image_ptr(image));
}

MOONBIT_FFI_EXPORT
sk_colorspace_t * moonbit_skia_image_get_colorspace(void * image) {
  return sk_image_get_colorspace(moonbit_skia_image_ptr(image));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_alpha_only(void * image) {
  return sk_image_is_alpha_only(moonbit_skia_image_ptr(image));
}

MOONBIT_FFI_EXPORT
sk_shader_t * moonbit_skia_image_make_shader_ffi(void * image, sk_shader_tilemode_t tileX, sk_shader_tilemode_t tileY, moonbit_bytes_t sampling, int32_t sampling_offset, moonbit_bytes_t cmatrix, int32_t cmatrix_offset) {
  return sk_image_make_shader(moonbit_skia_image_ptr(image), tileX, tileY, ((const sk_sampling_options_t *)(sampling + sampling_offset)), ((const sk_matrix_t *)(cmatrix + cmatrix_offset)));
}

MOONBIT_FFI_EXPORT
sk_shader_t * moonbit_skia_image_make_raw_shader_ffi(void * image, sk_shader_tilemode_t tileX, sk_shader_tilemode_t tileY, moonbit_bytes_t sampling, int32_t sampling_offset, moonbit_bytes_t cmatrix, int32_t cmatrix_offset) {
  return sk_image_make_raw_shader(moonbit_skia_image_ptr(image), tileX, tileY, ((const sk_sampling_options_t *)(sampling + sampling_offset)), ((const sk_matrix_t *)(cmatrix + cmatrix_offset)));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_peek_pixels(void * image, sk_pixmap_t * pixmap) {
  return sk_image_peek_pixels(moonbit_skia_image_ptr(image), pixmap);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_texture_backed(void * image) {
  return sk_image_is_texture_backed(moonbit_skia_image_ptr(image));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_lazy_generated(void * image) {
  return sk_image_is_lazy_generated(moonbit_skia_image_ptr(image));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_is_valid(void * image, gr_recording_context_t * context) {
  return sk_image_is_valid(moonbit_skia_image_ptr(image), context);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_read_pixels_ffi(void * image, moonbit_bytes_t dstInfo, int32_t dstInfo_offset, moonbit_bytes_t dstPixels, uint64_t dstRowBytes, int32_t srcX, int32_t srcY, sk_image_caching_hint_t cachingHint) {
  return sk_image_read_pixels(moonbit_skia_image_ptr(image), ((const sk_imageinfo_t *)(dstInfo + dstInfo_offset)), ((void *)dstPixels), dstRowBytes, srcX, srcY, cachingHint);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_read_pixels_into_pixmap(void * image, const sk_pixmap_t * dst, int32_t srcX, int32_t srcY, sk_image_caching_hint_t cachingHint) {
  return sk_image_read_pixels_into_pixmap(moonbit_skia_image_ptr(image), dst, srcX, srcY, cachingHint);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_image_scale_pixels_ffi(void * image, const sk_pixmap_t * dst, moonbit_bytes_t sampling, int32_t sampling_offset, sk_image_caching_hint_t cachingHint) {
  return sk_image_scale_pixels(moonbit_skia_image_ptr(image), dst, ((const sk_sampling_options_t *)(sampling + sampling_offset)), cachingHint);
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_ref_encoded(void * cimage) {
  return moonbit_skia_data_make_owned(sk_image_ref_encoded(moonbit_skia_image_ptr(cimage)));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_make_subset_raster_ffi(void * cimage, moonbit_bytes_t subset, int32_t subset_offset) {
  return moonbit_skia_image_make_owned(sk_image_make_subset_raster(moonbit_skia_image_ptr(cimage), ((const sk_irect_t *)(subset + subset_offset))));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_make_subset_ffi(void * cimage, gr_direct_context_t * context, moonbit_bytes_t subset, int32_t subset_offset) {
  return moonbit_skia_image_make_owned(sk_image_make_subset(moonbit_skia_image_ptr(cimage), context, ((const sk_irect_t *)(subset + subset_offset))));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_make_texture_image(void * cimage, gr_direct_context_t * context, int32_t mipmapped, int32_t budgeted) {
  return moonbit_skia_image_make_owned(sk_image_make_texture_image(moonbit_skia_image_ptr(cimage), context, mipmapped, budgeted));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_make_non_texture_image(void * cimage) {
  return moonbit_skia_image_make_owned(sk_image_make_non_texture_image(moonbit_skia_image_ptr(cimage)));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_make_raster_image(void * cimage) {
  return moonbit_skia_image_make_owned(sk_image_make_raster_image(moonbit_skia_image_ptr(cimage)));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_make_with_filter_raster_ffi(void * cimage, const sk_imagefilter_t * filter, moonbit_bytes_t subset, int32_t subset_offset, moonbit_bytes_t clipBounds, int32_t clipBounds_offset, moonbit_bytes_t outSubset, int32_t outSubset_offset, moonbit_bytes_t outOffset, int32_t outOffset_offset) {
  return moonbit_skia_image_make_owned(sk_image_make_with_filter_raster(moonbit_skia_image_ptr(cimage), filter, ((const sk_irect_t *)(subset + subset_offset)), ((const sk_irect_t *)(clipBounds + clipBounds_offset)), ((sk_irect_t *)(outSubset + outSubset_offset)), ((sk_ipoint_t *)(outOffset + outOffset_offset))));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_image_make_with_filter_ffi(void * cimage, gr_recording_context_t * context, const sk_imagefilter_t * filter, moonbit_bytes_t subset, int32_t subset_offset, moonbit_bytes_t clipBounds, int32_t clipBounds_offset, moonbit_bytes_t outSubset, int32_t outSubset_offset, moonbit_bytes_t outOffset, int32_t outOffset_offset) {
  return moonbit_skia_image_make_owned(sk_image_make_with_filter(moonbit_skia_image_ptr(cimage), context, filter, ((const sk_irect_t *)(subset + subset_offset)), ((const sk_irect_t *)(clipBounds + clipBounds_offset)), ((sk_irect_t *)(outSubset + outSubset_offset)), ((sk_ipoint_t *)(outOffset + outOffset_offset))));
}
