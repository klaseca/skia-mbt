#include "include/core/SkSurface.h"
#include "include/gpu/ganesh/GrDirectContext.h"

extern "C" __declspec(dllexport) int skia_flush_for_present(
    GrDirectContext* context, SkSurface* surface) {
    if (context->abandoned()) {
        return 0;
    }
    context->flush(surface, SkSurfaces::BackendSurfaceAccess::kPresent, GrFlushInfo());
    return context->submit() && !context->abandoned();
}
