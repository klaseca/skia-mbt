#include <moonbit.h>
#include <stdbool.h>

#include <include/c/sk_pixmap.h>
#include <include/c/sk_stream.h>
#include <include/c/sk_surface.h>
#include <include/c/sk_types.h>

sk_surface_t *moonbit_skia_surface_ptr(void *self);

MOONBIT_FFI_EXPORT
int moonbit_skia_write_surface_png(void *surface_resource, const char *path) {
  sk_surface_t *surface = moonbit_skia_surface_ptr(surface_resource);
  if (surface == NULL) return -10;

  sk_pixmap_t *pixmap = sk_pixmap_new();
  if (pixmap == NULL) return -20;
  if (!sk_surface_peek_pixels(surface, pixmap)) {
    sk_pixmap_destructor(pixmap);
    return -21;
  }

  sk_wstream_filestream_t *stream = sk_filewstream_new(path);
  if (stream == NULL || !sk_filewstream_is_valid(stream)) {
    if (stream != NULL) sk_filewstream_destroy(stream);
    sk_pixmap_destructor(pixmap);
    return -22;
  }

  sk_pngencoder_options_t options = {
      ALL_SK_PNGENCODER_FILTER_FLAGS, 6, NULL, NULL, NULL};
  bool ok = sk_pngencoder_encode((sk_wstream_t *)stream, pixmap, &options);
  sk_wstream_flush((sk_wstream_t *)stream);
  sk_filewstream_destroy(stream);
  sk_pixmap_destructor(pixmap);
  return ok ? 0 : -23;
}
