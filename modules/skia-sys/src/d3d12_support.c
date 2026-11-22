#include <moonbit.h>

#include <include/c/gr_context.h>
#include <include/c/sk_surface.h>

#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <d3d12.h>
#endif

void *moonbit_skia_surface_make_owned(sk_surface_t *surface);
sk_surface_t *moonbit_skia_surface_ptr(void *surface);

typedef int (*flush_for_present_fn)(gr_direct_context_t *, sk_surface_t *);

static flush_for_present_fn flush_for_present(void) {
#ifdef _WIN32
  HMODULE library = GetModuleHandleW(L"libSkiaSharp.dll");
  if (library != NULL) {
    return (flush_for_present_fn)GetProcAddress(library, "skia_flush_for_present");
  }
#endif
  return NULL;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_d3d12_available(void) {
  return flush_for_present() != NULL;
}

MOONBIT_FFI_EXPORT
gr_direct_context_t *moonbit_skia_d3d12_make_context(
    void *adapter, void *device, void *queue) {
  if (adapter == NULL || device == NULL || queue == NULL) {
    return NULL;
  }
  const gr_d3d_backendcontext_t backend = {
    .fAdapter = adapter,
    .fDevice = device,
    .fQueue = queue,
  };
  return gr_direct_context_make_direct3d(backend);
}

MOONBIT_FFI_EXPORT
void *moonbit_skia_d3d12_wrap_back_buffer(
    gr_recording_context_t *context, void *resource, int32_t width, int32_t height) {
  sk_surface_t *surface = NULL;
#ifdef _WIN32
  if (context != NULL && resource != NULL && width > 0 && height > 0) {
    const gr_d3d_textureresourceinfo_t info = {
      .fResource = resource,
      .fResourceState = D3D12_RESOURCE_STATE_PRESENT,
      .fFormat = DXGI_FORMAT_R8G8B8A8_UNORM,
      .fSampleCount = 1,
      .fLevelCount = 1,
    };
    gr_backendrendertarget_t *target =
        gr_backendrendertarget_new_direct3d(width, height, &info);
    if (target != NULL) {
      surface = sk_surface_new_backend_render_target(
          context, target, TOP_LEFT_GR_SURFACE_ORIGIN, RGBA_8888_SK_COLORTYPE,
          NULL, NULL);
      gr_backendrendertarget_delete(target);
    }
  }
#else
  (void)context;
  (void)resource;
  (void)width;
  (void)height;
#endif
  return moonbit_skia_surface_make_owned(surface);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_d3d12_flush_for_present(gr_direct_context_t *context, void *surface) {
  flush_for_present_fn flush = flush_for_present();
  sk_surface_t *raw = moonbit_skia_surface_ptr(surface);
  return flush != NULL && context != NULL && raw != NULL &&
         sk_surface_get_recording_context(raw) == (gr_recording_context_t *)context &&
         flush(context, raw);
}
