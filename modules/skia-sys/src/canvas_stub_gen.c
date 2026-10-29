// Generated file. Do not edit by hand.

#include <include/c/sk_canvas.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  sk_canvas_t *ptr;
  int32_t owns_ptr;
  void *native_owner;
  void (*release_native_owner)(void *);
} moonbit_skia_canvas_resource_t;

static void moonbit_skia_canvas_release(void *ptr) {
  if (ptr != NULL) sk_canvas_destroy((sk_canvas_t *)ptr);
}

static void moonbit_skia_canvas_finalize(void *self) {
  moonbit_skia_canvas_resource_t *resource = (moonbit_skia_canvas_resource_t *)self;
  if (resource == NULL) return;
  if (resource->owns_ptr && resource->ptr != NULL) moonbit_skia_canvas_release(resource->ptr);
  resource->ptr = NULL;
  resource->owns_ptr = 0;
  if (resource->native_owner != NULL && resource->release_native_owner != NULL) {
    resource->release_native_owner(resource->native_owner);
  }
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_destroy(void *self) {
  moonbit_skia_canvas_finalize(self);
}

sk_canvas_t *moonbit_skia_canvas_ptr(void *self) {
  moonbit_skia_canvas_resource_t *resource = (moonbit_skia_canvas_resource_t *)self;
  return resource == NULL ? NULL : resource->ptr;
}

static void *moonbit_skia_canvas_make(sk_canvas_t *ptr, int32_t owns_ptr) {
  moonbit_skia_canvas_resource_t *resource = (moonbit_skia_canvas_resource_t *)moonbit_make_external_object(
    moonbit_skia_canvas_finalize, sizeof(moonbit_skia_canvas_resource_t)
  );
  resource->ptr = ptr;
  resource->owns_ptr = owns_ptr;
  resource->native_owner = NULL;
  resource->release_native_owner = NULL;
  return resource;
}

void *moonbit_skia_canvas_make_owned(sk_canvas_t *ptr) {
  return moonbit_skia_canvas_make(ptr, 1);
}

void *moonbit_skia_canvas_make_dependent(sk_canvas_t *ptr, void *owner, void (*retain_owner)(void *), void (*release_owner)(void *)) {
  moonbit_skia_canvas_resource_t *resource = (moonbit_skia_canvas_resource_t *)moonbit_skia_canvas_make(ptr, 0);
  if (ptr != NULL && owner != NULL) {
    retain_owner(owner);
    resource->native_owner = owner;
    resource->release_native_owner = release_owner;
  }
  return resource;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_is_null(void *self) {
  return moonbit_skia_canvas_ptr(self) == NULL;
}

sk_data_t *moonbit_skia_data_ptr(void *self);

sk_font_t *moonbit_skia_font_ptr(void *self);

sk_image_t *moonbit_skia_image_ptr(void *self);

sk_paint_t *moonbit_skia_paint_ptr(void *self);

sk_path_t *moonbit_skia_path_ptr(void *self);

void *moonbit_skia_surface_make_retained(sk_surface_t *ptr);

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_clear(void * ccanvas, uint32_t color) {
  sk_canvas_clear(moonbit_skia_canvas_ptr(ccanvas), color);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_discard(void * ccanvas) {
  sk_canvas_discard(moonbit_skia_canvas_ptr(ccanvas));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_get_save_count(void * ccanvas) {
  return sk_canvas_get_save_count(moonbit_skia_canvas_ptr(ccanvas));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_restore_to_count(void * ccanvas, int32_t saveCount) {
  sk_canvas_restore_to_count(moonbit_skia_canvas_ptr(ccanvas), saveCount);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_color(void * ccanvas, uint32_t color, sk_blendmode_t cmode) {
  sk_canvas_draw_color(moonbit_skia_canvas_ptr(ccanvas), color, cmode);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_point(void * ccanvas, float x, float y, void * cpaint) {
  sk_canvas_draw_point(moonbit_skia_canvas_ptr(ccanvas), x, y, moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_line(void * ccanvas, float x0, float y0, float x1, float y1, void * cpaint) {
  sk_canvas_draw_line(moonbit_skia_canvas_ptr(ccanvas), x0, y0, x1, y1, moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_simple_text(void * ccanvas, moonbit_bytes_t text, uint64_t byte_length, sk_text_encoding_t encoding, float x, float y, void * cfont, void * cpaint) {
  sk_canvas_draw_simple_text(moonbit_skia_canvas_ptr(ccanvas), ((const void *)text), byte_length, encoding, x, y, moonbit_skia_font_ptr(cfont), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_text_blob(void * ccanvas, sk_textblob_t * text, float x, float y, void * cpaint) {
  sk_canvas_draw_text_blob(moonbit_skia_canvas_ptr(ccanvas), text, x, y, moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_reset_matrix(void * ccanvas) {
  sk_canvas_reset_matrix(moonbit_skia_canvas_ptr(ccanvas));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_set_matrix_ffi(void * ccanvas, moonbit_bytes_t cmatrix, int32_t cmatrix_offset) {
  sk_canvas_set_matrix(moonbit_skia_canvas_ptr(ccanvas), ((const sk_matrix44_t *)(cmatrix + cmatrix_offset)));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_get_matrix_ffi(void * ccanvas, moonbit_bytes_t cmatrix, int32_t cmatrix_offset) {
  sk_canvas_get_matrix(moonbit_skia_canvas_ptr(ccanvas), ((sk_matrix44_t *)(cmatrix + cmatrix_offset)));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_round_rect_ffi(void * ccanvas, moonbit_bytes_t crect, int32_t crect_offset, float rx, float ry, void * cpaint) {
  sk_canvas_draw_round_rect(moonbit_skia_canvas_ptr(ccanvas), ((const sk_rect_t *)(crect + crect_offset)), rx, ry, moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_clip_rect_with_operation_ffi(void * ccanvas, moonbit_bytes_t crect, int32_t crect_offset, sk_clipop_t op, int32_t doAA) {
  sk_canvas_clip_rect_with_operation(moonbit_skia_canvas_ptr(ccanvas), ((const sk_rect_t *)(crect + crect_offset)), op, doAA);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_clip_path_with_operation(void * ccanvas, void * cpath, sk_clipop_t op, int32_t doAA) {
  sk_canvas_clip_path_with_operation(moonbit_skia_canvas_ptr(ccanvas), moonbit_skia_path_ptr(cpath), op, doAA);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_clip_rrect_with_operation(void * ccanvas, const sk_rrect_t * crect, sk_clipop_t op, int32_t doAA) {
  sk_canvas_clip_rrect_with_operation(moonbit_skia_canvas_ptr(ccanvas), crect, op, doAA);
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_get_local_clip_bounds_ffi(void * ccanvas, moonbit_bytes_t cbounds, int32_t cbounds_offset) {
  return sk_canvas_get_local_clip_bounds(moonbit_skia_canvas_ptr(ccanvas), ((sk_rect_t *)(cbounds + cbounds_offset)));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_get_device_clip_bounds_ffi(void * ccanvas, moonbit_bytes_t cbounds, int32_t cbounds_offset) {
  return sk_canvas_get_device_clip_bounds(moonbit_skia_canvas_ptr(ccanvas), ((sk_irect_t *)(cbounds + cbounds_offset)));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_save(void * ccanvas) {
  return sk_canvas_save(moonbit_skia_canvas_ptr(ccanvas));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_save_layer_ffi(void * ccanvas, moonbit_bytes_t crect, int32_t crect_offset, void * cpaint) {
  return sk_canvas_save_layer(moonbit_skia_canvas_ptr(ccanvas), ((const sk_rect_t *)(crect + crect_offset)), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_restore(void * ccanvas) {
  sk_canvas_restore(moonbit_skia_canvas_ptr(ccanvas));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_translate(void * ccanvas, float dx, float dy) {
  sk_canvas_translate(moonbit_skia_canvas_ptr(ccanvas), dx, dy);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_scale(void * ccanvas, float sx, float sy) {
  sk_canvas_scale(moonbit_skia_canvas_ptr(ccanvas), sx, sy);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_rotate_degrees(void * ccanvas, float degrees) {
  sk_canvas_rotate_degrees(moonbit_skia_canvas_ptr(ccanvas), degrees);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_rotate_radians(void * ccanvas, float radians) {
  sk_canvas_rotate_radians(moonbit_skia_canvas_ptr(ccanvas), radians);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_skew(void * ccanvas, float sx, float sy) {
  sk_canvas_skew(moonbit_skia_canvas_ptr(ccanvas), sx, sy);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_concat_ffi(void * ccanvas, moonbit_bytes_t cmatrix, int32_t cmatrix_offset) {
  sk_canvas_concat(moonbit_skia_canvas_ptr(ccanvas), ((const sk_matrix44_t *)(cmatrix + cmatrix_offset)));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_quick_reject_ffi(void * ccanvas, moonbit_bytes_t crect, int32_t crect_offset) {
  return sk_canvas_quick_reject(moonbit_skia_canvas_ptr(ccanvas), ((const sk_rect_t *)(crect + crect_offset)));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_clip_region(void * ccanvas, const sk_region_t * region, sk_clipop_t op) {
  sk_canvas_clip_region(moonbit_skia_canvas_ptr(ccanvas), region, op);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_paint(void * ccanvas, void * cpaint) {
  sk_canvas_draw_paint(moonbit_skia_canvas_ptr(ccanvas), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_region(void * ccanvas, const sk_region_t * cregion, void * cpaint) {
  sk_canvas_draw_region(moonbit_skia_canvas_ptr(ccanvas), cregion, moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_rect_ffi(void * ccanvas, moonbit_bytes_t crect, int32_t crect_offset, void * cpaint) {
  sk_canvas_draw_rect(moonbit_skia_canvas_ptr(ccanvas), ((const sk_rect_t *)(crect + crect_offset)), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_rrect(void * ccanvas, const sk_rrect_t * crect, void * cpaint) {
  sk_canvas_draw_rrect(moonbit_skia_canvas_ptr(ccanvas), crect, moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_circle(void * ccanvas, float cx, float cy, float rad, void * cpaint) {
  sk_canvas_draw_circle(moonbit_skia_canvas_ptr(ccanvas), cx, cy, rad, moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_oval_ffi(void * ccanvas, moonbit_bytes_t crect, int32_t crect_offset, void * cpaint) {
  sk_canvas_draw_oval(moonbit_skia_canvas_ptr(ccanvas), ((const sk_rect_t *)(crect + crect_offset)), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_path(void * ccanvas, void * cpath, void * cpaint) {
  sk_canvas_draw_path(moonbit_skia_canvas_ptr(ccanvas), moonbit_skia_path_ptr(cpath), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_image_ffi(void * ccanvas, void * cimage, float x, float y, moonbit_bytes_t sampling, int32_t sampling_offset, void * cpaint) {
  sk_canvas_draw_image(moonbit_skia_canvas_ptr(ccanvas), moonbit_skia_image_ptr(cimage), x, y, ((const sk_sampling_options_t *)(sampling + sampling_offset)), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_image_rect_ffi(void * ccanvas, void * cimage, moonbit_bytes_t csrcR, int32_t csrcR_offset, moonbit_bytes_t cdstR, int32_t cdstR_offset, moonbit_bytes_t sampling, int32_t sampling_offset, void * cpaint) {
  sk_canvas_draw_image_rect(moonbit_skia_canvas_ptr(ccanvas), moonbit_skia_image_ptr(cimage), ((const sk_rect_t *)(csrcR + csrcR_offset)), ((const sk_rect_t *)(cdstR + cdstR_offset)), ((const sk_sampling_options_t *)(sampling + sampling_offset)), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_picture_ffi(void * ccanvas, const sk_picture_t * cpicture, moonbit_bytes_t cmatrix, int32_t cmatrix_offset, void * cpaint) {
  sk_canvas_draw_picture(moonbit_skia_canvas_ptr(ccanvas), cpicture, ((const sk_matrix_t *)(cmatrix + cmatrix_offset)), moonbit_skia_paint_ptr(cpaint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_drawable_ffi(void * ccanvas, sk_drawable_t * cdrawable, moonbit_bytes_t cmatrix, int32_t cmatrix_offset) {
  sk_canvas_draw_drawable(moonbit_skia_canvas_ptr(ccanvas), cdrawable, ((const sk_matrix_t *)(cmatrix + cmatrix_offset)));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_canvas_new_from_bitmap(const sk_bitmap_t * bitmap) {
  return moonbit_skia_canvas_make_owned(sk_canvas_new_from_bitmap(bitmap));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_canvas_new_from_raster_ffi(moonbit_bytes_t cinfo, int32_t cinfo_offset, moonbit_bytes_t pixels, uint64_t rowBytes, const sk_surfaceprops_t * props) {
  return moonbit_skia_canvas_make_owned(sk_canvas_new_from_raster(((const sk_imageinfo_t *)(cinfo + cinfo_offset)), ((void *)pixels), rowBytes, props));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_annotation_ffi(void * t, moonbit_bytes_t rect, int32_t rect_offset, moonbit_bytes_t key, void * value) {
  sk_canvas_draw_annotation(moonbit_skia_canvas_ptr(t), ((const sk_rect_t *)(rect + rect_offset)), (const char *)key, moonbit_skia_data_ptr(value));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_url_annotation_ffi(void * t, moonbit_bytes_t rect, int32_t rect_offset, void * value) {
  sk_canvas_draw_url_annotation(moonbit_skia_canvas_ptr(t), ((const sk_rect_t *)(rect + rect_offset)), moonbit_skia_data_ptr(value));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_named_destination_annotation_ffi(void * t, moonbit_bytes_t point, int32_t point_offset, void * value) {
  sk_canvas_draw_named_destination_annotation(moonbit_skia_canvas_ptr(t), ((const sk_point_t *)(point + point_offset)), moonbit_skia_data_ptr(value));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_link_destination_annotation_ffi(void * t, moonbit_bytes_t rect, int32_t rect_offset, void * value) {
  sk_canvas_draw_link_destination_annotation(moonbit_skia_canvas_ptr(t), ((const sk_rect_t *)(rect + rect_offset)), moonbit_skia_data_ptr(value));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_image_nine_ffi(void * ccanvas, void * image, moonbit_bytes_t center, int32_t center_offset, moonbit_bytes_t dst, int32_t dst_offset, sk_filter_mode_t mode, void * paint) {
  sk_canvas_draw_image_nine(moonbit_skia_canvas_ptr(ccanvas), moonbit_skia_image_ptr(image), ((const sk_irect_t *)(center + center_offset)), ((const sk_rect_t *)(dst + dst_offset)), mode, moonbit_skia_paint_ptr(paint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_vertices(void * ccanvas, const sk_vertices_t * vertices, sk_blendmode_t mode, void * paint) {
  sk_canvas_draw_vertices(moonbit_skia_canvas_ptr(ccanvas), vertices, mode, moonbit_skia_paint_ptr(paint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_arc_ffi(void * ccanvas, moonbit_bytes_t oval, int32_t oval_offset, float startAngle, float sweepAngle, int32_t useCenter, void * paint) {
  sk_canvas_draw_arc(moonbit_skia_canvas_ptr(ccanvas), ((const sk_rect_t *)(oval + oval_offset)), startAngle, sweepAngle, useCenter, moonbit_skia_paint_ptr(paint));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_canvas_draw_drrect(void * ccanvas, const sk_rrect_t * outer, const sk_rrect_t * inner, void * paint) {
  sk_canvas_draw_drrect(moonbit_skia_canvas_ptr(ccanvas), outer, inner, moonbit_skia_paint_ptr(paint));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_is_clip_empty(void * ccanvas) {
  return sk_canvas_is_clip_empty(moonbit_skia_canvas_ptr(ccanvas));
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_canvas_is_clip_rect(void * ccanvas) {
  return sk_canvas_is_clip_rect(moonbit_skia_canvas_ptr(ccanvas));
}

MOONBIT_FFI_EXPORT
sk_nodraw_canvas_t * moonbit_skia_nodraw_canvas_new(int32_t width, int32_t height) {
  return sk_nodraw_canvas_new(width, height);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_nodraw_canvas_destroy(sk_nodraw_canvas_t * t) {
  sk_nodraw_canvas_destroy(t);
}

MOONBIT_FFI_EXPORT
sk_nway_canvas_t * moonbit_skia_nway_canvas_new(int32_t width, int32_t height) {
  return sk_nway_canvas_new(width, height);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_nway_canvas_destroy(sk_nway_canvas_t * t) {
  sk_nway_canvas_destroy(t);
}

MOONBIT_FFI_EXPORT
void moonbit_skia_nway_canvas_add_canvas(sk_nway_canvas_t * t, void * canvas) {
  sk_nway_canvas_add_canvas(t, moonbit_skia_canvas_ptr(canvas));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_nway_canvas_remove_canvas(sk_nway_canvas_t * t, void * canvas) {
  sk_nway_canvas_remove_canvas(t, moonbit_skia_canvas_ptr(canvas));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_nway_canvas_remove_all(sk_nway_canvas_t * t) {
  sk_nway_canvas_remove_all(t);
}

MOONBIT_FFI_EXPORT
sk_overdraw_canvas_t * moonbit_skia_overdraw_canvas_new(void * canvas) {
  return sk_overdraw_canvas_new(moonbit_skia_canvas_ptr(canvas));
}

MOONBIT_FFI_EXPORT
void moonbit_skia_overdraw_canvas_destroy(sk_overdraw_canvas_t * canvas) {
  sk_overdraw_canvas_destroy(canvas);
}

MOONBIT_FFI_EXPORT
gr_recording_context_t * moonbit_skia_get_recording_context(void * canvas) {
  return sk_get_recording_context(moonbit_skia_canvas_ptr(canvas));
}

MOONBIT_FFI_EXPORT
void * moonbit_skia_get_surface(void * canvas) {
  return moonbit_skia_surface_make_retained(sk_get_surface(moonbit_skia_canvas_ptr(canvas)));
}
