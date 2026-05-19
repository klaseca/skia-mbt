// Generated file. Do not edit by hand.

#include <include/c/sk_path.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  sk_path_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_path_resource_t;

static void moonbit_skia_path_release(void *ptr) {
  if (ptr != NULL) sk_path_delete((sk_path_t *)ptr);
}

static void moonbit_skia_path_finalize(void *self) {
  moonbit_skia_path_resource_t *resource = (moonbit_skia_path_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_path_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_delete(void *self) {
  moonbit_skia_path_finalize(self);
}

sk_path_t *moonbit_skia_path_ptr(void *self) {
  moonbit_skia_path_resource_t *resource = (moonbit_skia_path_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_path_make(sk_path_t *ptr, int32_t owns_ptr) {
  moonbit_skia_path_resource_t *resource = (moonbit_skia_path_resource_t *)moonbit_make_external_object(
    moonbit_skia_path_finalize, sizeof(moonbit_skia_path_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_path_make_owned(sk_path_t *ptr) {
  return moonbit_skia_path_make(ptr, 1);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_is_null(void *self) {
  return moonbit_skia_path_ptr(self) == NULL;
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_path_new(void) {
  return moonbit_skia_path_make_owned(sk_path_new());
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_path_clone(void * cpath) {
  return moonbit_skia_path_make_owned(sk_path_clone(moonbit_skia_path_ptr(cpath)));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_get_bounds_ffi(void * arg0, moonbit_bytes_t arg1) {
  sk_path_get_bounds(moonbit_skia_path_ptr(arg0), ((sk_rect_t *)arg1));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_compute_tight_bounds_ffi(void * arg0, moonbit_bytes_t arg1) {
  sk_path_compute_tight_bounds(moonbit_skia_path_ptr(arg0), ((sk_rect_t *)arg1));
}

MOONBIT_FFI_EXPORT
sk_path_filltype_t moonbit_skia_path_get_filltype(void * arg0) {
  return sk_path_get_filltype(moonbit_skia_path_ptr(arg0));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_set_filltype(void * arg0, sk_path_filltype_t arg1) {
  sk_path_set_filltype(moonbit_skia_path_ptr(arg0), arg1);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_transform_ffi(void * cpath, moonbit_bytes_t cmatrix) {
  sk_path_transform(moonbit_skia_path_ptr(cpath), ((const sk_matrix_t *)cmatrix));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_transform_to_dest_ffi(void * cpath, moonbit_bytes_t cmatrix, void * destination) {
  sk_path_transform_to_dest(moonbit_skia_path_ptr(cpath), ((const sk_matrix_t *)cmatrix), moonbit_skia_path_ptr(destination));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_reset(void * cpath) {
  sk_path_reset(moonbit_skia_path_ptr(cpath));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_rewind(void * cpath) {
  sk_path_rewind(moonbit_skia_path_ptr(cpath));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_count_points(void * cpath) {
  return sk_path_count_points(moonbit_skia_path_ptr(cpath));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_count_verbs(void * cpath) {
  return sk_path_count_verbs(moonbit_skia_path_ptr(cpath));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_get_point_ffi(void * cpath, int32_t index, moonbit_bytes_t point) {
  sk_path_get_point(moonbit_skia_path_ptr(cpath), index, ((sk_point_t *)point));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_get_points_ffi(void * cpath, moonbit_bytes_t points, int32_t max) {
  return sk_path_get_points(moonbit_skia_path_ptr(cpath), ((sk_point_t *)points), max);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_contains(void * cpath, float x, float y) {
  return sk_path_contains(moonbit_skia_path_ptr(cpath), x, y);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_parse_svg_string(void * cpath, moonbit_bytes_t str) {
  return sk_path_parse_svg_string(moonbit_skia_path_ptr(cpath), (const char *)str);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_to_svg_string(void * cpath, sk_string_t * str) {
  sk_path_to_svg_string(moonbit_skia_path_ptr(cpath), str);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_get_last_point_ffi(void * cpath, moonbit_bytes_t point) {
  return sk_path_get_last_point(moonbit_skia_path_ptr(cpath), ((sk_point_t *)point));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_convert_conic_to_quads_ffi(moonbit_bytes_t p0, moonbit_bytes_t p1, moonbit_bytes_t p2, float w, moonbit_bytes_t pts, int32_t pow2) {
  return sk_path_convert_conic_to_quads(((const sk_point_t *)p0), ((const sk_point_t *)p1), ((const sk_point_t *)p2), w, ((sk_point_t *)pts), pow2);
}

MOONBIT_FFI_EXPORT
uint32_t moonbit_skia_path_get_segment_masks(void * cpath) {
  return sk_path_get_segment_masks(moonbit_skia_path_ptr(cpath));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_is_oval_ffi(void * cpath, moonbit_bytes_t bounds) {
  return sk_path_is_oval(moonbit_skia_path_ptr(cpath), ((sk_rect_t *)bounds));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_is_rrect(void * cpath, sk_rrect_t * bounds) {
  return sk_path_is_rrect(moonbit_skia_path_ptr(cpath), bounds);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_is_rect_ffi(void * cpath, moonbit_bytes_t rect, int32_t * isClosed, sk_path_direction_t * direction) {
  bool isClosed_value = 0;
  sk_path_direction_t direction_value = 0;
  int32_t result = sk_path_is_rect(moonbit_skia_path_ptr(cpath), ((sk_rect_t *)rect), &isClosed_value, &direction_value);
  if (isClosed != NULL) *isClosed = isClosed_value;
  if (direction != NULL) *direction = direction_value;
  return result;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_is_convex(void * cpath) {
  return sk_path_is_convex(moonbit_skia_path_ptr(cpath));
}

MOONBIT_FFI_EXPORT
sk_path_iterator_t * moonbit_skia_path_create_iter(void * cpath, int32_t forceClose) {
  return sk_path_create_iter(moonbit_skia_path_ptr(cpath), forceClose);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_path_iter_conic_weight(sk_path_iterator_t * iterator) {
  return sk_path_iter_conic_weight(iterator);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_iter_is_close_line(sk_path_iterator_t * iterator) {
  return sk_path_iter_is_close_line(iterator);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_path_iter_is_closed_contour(sk_path_iterator_t * iterator) {
  return sk_path_iter_is_closed_contour(iterator);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_iter_destroy(sk_path_iterator_t * iterator) {
  sk_path_iter_destroy(iterator);
}

MOONBIT_FFI_EXPORT
sk_path_rawiterator_t * moonbit_skia_path_create_rawiter(void * cpath) {
  return sk_path_create_rawiter(moonbit_skia_path_ptr(cpath));
}

MOONBIT_FFI_EXPORT
sk_path_verb_t moonbit_skia_path_rawiter_peek(sk_path_rawiterator_t * iterator) {
  return sk_path_rawiter_peek(iterator);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_path_rawiter_conic_weight(sk_path_rawiterator_t * iterator) {
  return sk_path_rawiter_conic_weight(iterator);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_path_rawiter_destroy(sk_path_rawiterator_t * iterator) {
  sk_path_rawiter_destroy(iterator);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathop_op(void * one, void * two, sk_pathop_t op, void * result) {
  return sk_pathop_op(moonbit_skia_path_ptr(one), moonbit_skia_path_ptr(two), op, moonbit_skia_path_ptr(result));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathop_simplify(void * path, void * result) {
  return sk_pathop_simplify(moonbit_skia_path_ptr(path), moonbit_skia_path_ptr(result));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathop_tight_bounds_ffi(void * path, moonbit_bytes_t result) {
  return sk_pathop_tight_bounds(moonbit_skia_path_ptr(path), ((sk_rect_t *)result));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathop_as_winding(void * path, void * result) {
  return sk_pathop_as_winding(moonbit_skia_path_ptr(path), moonbit_skia_path_ptr(result));
}

MOONBIT_FFI_EXPORT
sk_opbuilder_t * moonbit_skia_opbuilder_new(void) {
  return sk_opbuilder_new();
}

MOONBIT_FFI_EXPORT
void moonbit_skia_opbuilder_destroy(sk_opbuilder_t * builder) {
  sk_opbuilder_destroy(builder);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_opbuilder_add(sk_opbuilder_t * builder, void * path, sk_pathop_t op) {
  sk_opbuilder_add(builder, moonbit_skia_path_ptr(path), op);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_opbuilder_resolve(sk_opbuilder_t * builder, void * result) {
  return sk_opbuilder_resolve(builder, moonbit_skia_path_ptr(result));
}

MOONBIT_FFI_EXPORT
sk_pathmeasure_t * moonbit_skia_pathmeasure_new(void) {
  return sk_pathmeasure_new();
}

MOONBIT_FFI_EXPORT
sk_pathmeasure_t * moonbit_skia_pathmeasure_new_with_path(void * path, int32_t forceClosed, float resScale) {
  return sk_pathmeasure_new_with_path(moonbit_skia_path_ptr(path), forceClosed, resScale);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_pathmeasure_destroy(sk_pathmeasure_t * pathMeasure) {
  sk_pathmeasure_destroy(pathMeasure);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_pathmeasure_set_path(sk_pathmeasure_t * pathMeasure, void * path, int32_t forceClosed) {
  sk_pathmeasure_set_path(pathMeasure, moonbit_skia_path_ptr(path), forceClosed);
}

MOONBIT_FFI_EXPORT
float moonbit_skia_pathmeasure_get_length(sk_pathmeasure_t * pathMeasure) {
  return sk_pathmeasure_get_length(pathMeasure);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathmeasure_get_matrix_ffi(sk_pathmeasure_t * pathMeasure, float distance, moonbit_bytes_t matrix, sk_pathmeasure_matrixflags_t flags) {
  return sk_pathmeasure_get_matrix(pathMeasure, distance, ((sk_matrix_t *)matrix), flags);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathmeasure_get_segment(sk_pathmeasure_t * pathMeasure, float start, float stop, sk_pathbuilder_t * dst, int32_t startWithMoveTo) {
  return sk_pathmeasure_get_segment(pathMeasure, start, stop, dst, startWithMoveTo);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathmeasure_is_closed(sk_pathmeasure_t * pathMeasure) {
  return sk_pathmeasure_is_closed(pathMeasure);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_pathmeasure_next_contour(sk_pathmeasure_t * pathMeasure) {
  return sk_pathmeasure_next_contour(pathMeasure);
}
