#include <moonbit.h>
#include <stdint.h>

#include <include/c/sk_types.h>

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_imageinfo_bgra8888_premul(
    int32_t width, int32_t height) {
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_imageinfo_t), 0);
  sk_imageinfo_t *info = (sk_imageinfo_t *)bytes;
  info->colorspace = NULL;
  info->width = width;
  info->height = height;
  info->colorType = BGRA_8888_SK_COLORTYPE;
  info->alphaType = PREMUL_SK_ALPHATYPE;
  return bytes;
}
