// Generated file. Do not edit by hand.

#include <include/c/sk_types.h>
#include <moonbit.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_color4f_make(float arg_f_r, float arg_f_g, float arg_f_b, float arg_f_a) {
  sk_color4f_t value = { 0 };
  value.fR = arg_f_r;
  value.fG = arg_f_g;
  value.fB = arg_f_b;
  value.fA = arg_f_a;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_color4f_t), 0);
  memcpy(bytes, &value, sizeof(sk_color4f_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_color4f_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_color4f_t),
    (int32_t)offsetof(sk_color4f_t, fR),
    (int32_t)sizeof(((sk_color4f_t *)0)->fR),
    0,
    (int32_t)offsetof(sk_color4f_t, fG),
    (int32_t)sizeof(((sk_color4f_t *)0)->fG),
    0,
    (int32_t)offsetof(sk_color4f_t, fB),
    (int32_t)sizeof(((sk_color4f_t *)0)->fB),
    0,
    (int32_t)offsetof(sk_color4f_t, fA),
    (int32_t)sizeof(((sk_color4f_t *)0)->fA),
    0,
  };
  int32_t *result = moonbit_make_int32_array(13, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_point_make(float arg_x, float arg_y) {
  sk_point_t value = { 0 };
  value.x = arg_x;
  value.y = arg_y;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_point_t), 0);
  memcpy(bytes, &value, sizeof(sk_point_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_point_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_point_t),
    (int32_t)offsetof(sk_point_t, x),
    (int32_t)sizeof(((sk_point_t *)0)->x),
    0,
    (int32_t)offsetof(sk_point_t, y),
    (int32_t)sizeof(((sk_point_t *)0)->y),
    0,
  };
  int32_t *result = moonbit_make_int32_array(7, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_irect_make(int32_t arg_left, int32_t arg_top, int32_t arg_right, int32_t arg_bottom) {
  sk_irect_t value = { 0 };
  value.left = arg_left;
  value.top = arg_top;
  value.right = arg_right;
  value.bottom = arg_bottom;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_irect_t), 0);
  memcpy(bytes, &value, sizeof(sk_irect_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_irect_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_irect_t),
    (int32_t)offsetof(sk_irect_t, left),
    (int32_t)sizeof(((sk_irect_t *)0)->left),
    ((int32_t)-1 < (int32_t)0),
    (int32_t)offsetof(sk_irect_t, top),
    (int32_t)sizeof(((sk_irect_t *)0)->top),
    ((int32_t)-1 < (int32_t)0),
    (int32_t)offsetof(sk_irect_t, right),
    (int32_t)sizeof(((sk_irect_t *)0)->right),
    ((int32_t)-1 < (int32_t)0),
    (int32_t)offsetof(sk_irect_t, bottom),
    (int32_t)sizeof(((sk_irect_t *)0)->bottom),
    ((int32_t)-1 < (int32_t)0),
  };
  int32_t *result = moonbit_make_int32_array(13, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_rect_make(float arg_left, float arg_top, float arg_right, float arg_bottom) {
  sk_rect_t value = { 0 };
  value.left = arg_left;
  value.top = arg_top;
  value.right = arg_right;
  value.bottom = arg_bottom;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_rect_t), 0);
  memcpy(bytes, &value, sizeof(sk_rect_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_rect_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_rect_t),
    (int32_t)offsetof(sk_rect_t, left),
    (int32_t)sizeof(((sk_rect_t *)0)->left),
    0,
    (int32_t)offsetof(sk_rect_t, top),
    (int32_t)sizeof(((sk_rect_t *)0)->top),
    0,
    (int32_t)offsetof(sk_rect_t, right),
    (int32_t)sizeof(((sk_rect_t *)0)->right),
    0,
    (int32_t)offsetof(sk_rect_t, bottom),
    (int32_t)sizeof(((sk_rect_t *)0)->bottom),
    0,
  };
  int32_t *result = moonbit_make_int32_array(13, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_matrix_make(float arg_scale_x, float arg_skew_x, float arg_trans_x, float arg_skew_y, float arg_scale_y, float arg_trans_y, float arg_persp0, float arg_persp1, float arg_persp2) {
  sk_matrix_t value = { 0 };
  value.scaleX = arg_scale_x;
  value.skewX = arg_skew_x;
  value.transX = arg_trans_x;
  value.skewY = arg_skew_y;
  value.scaleY = arg_scale_y;
  value.transY = arg_trans_y;
  value.persp0 = arg_persp0;
  value.persp1 = arg_persp1;
  value.persp2 = arg_persp2;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_matrix_t), 0);
  memcpy(bytes, &value, sizeof(sk_matrix_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_matrix_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_matrix_t),
    (int32_t)offsetof(sk_matrix_t, scaleX),
    (int32_t)sizeof(((sk_matrix_t *)0)->scaleX),
    0,
    (int32_t)offsetof(sk_matrix_t, skewX),
    (int32_t)sizeof(((sk_matrix_t *)0)->skewX),
    0,
    (int32_t)offsetof(sk_matrix_t, transX),
    (int32_t)sizeof(((sk_matrix_t *)0)->transX),
    0,
    (int32_t)offsetof(sk_matrix_t, skewY),
    (int32_t)sizeof(((sk_matrix_t *)0)->skewY),
    0,
    (int32_t)offsetof(sk_matrix_t, scaleY),
    (int32_t)sizeof(((sk_matrix_t *)0)->scaleY),
    0,
    (int32_t)offsetof(sk_matrix_t, transY),
    (int32_t)sizeof(((sk_matrix_t *)0)->transY),
    0,
    (int32_t)offsetof(sk_matrix_t, persp0),
    (int32_t)sizeof(((sk_matrix_t *)0)->persp0),
    0,
    (int32_t)offsetof(sk_matrix_t, persp1),
    (int32_t)sizeof(((sk_matrix_t *)0)->persp1),
    0,
    (int32_t)offsetof(sk_matrix_t, persp2),
    (int32_t)sizeof(((sk_matrix_t *)0)->persp2),
    0,
  };
  int32_t *result = moonbit_make_int32_array(28, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_matrix44_make(float arg_m00, float arg_m01, float arg_m02, float arg_m03, float arg_m10, float arg_m11, float arg_m12, float arg_m13, float arg_m20, float arg_m21, float arg_m22, float arg_m23, float arg_m30, float arg_m31, float arg_m32, float arg_m33) {
  sk_matrix44_t value = { 0 };
  value.m00 = arg_m00;
  value.m01 = arg_m01;
  value.m02 = arg_m02;
  value.m03 = arg_m03;
  value.m10 = arg_m10;
  value.m11 = arg_m11;
  value.m12 = arg_m12;
  value.m13 = arg_m13;
  value.m20 = arg_m20;
  value.m21 = arg_m21;
  value.m22 = arg_m22;
  value.m23 = arg_m23;
  value.m30 = arg_m30;
  value.m31 = arg_m31;
  value.m32 = arg_m32;
  value.m33 = arg_m33;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_matrix44_t), 0);
  memcpy(bytes, &value, sizeof(sk_matrix44_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_matrix44_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_matrix44_t),
    (int32_t)offsetof(sk_matrix44_t, m00),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m00),
    0,
    (int32_t)offsetof(sk_matrix44_t, m01),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m01),
    0,
    (int32_t)offsetof(sk_matrix44_t, m02),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m02),
    0,
    (int32_t)offsetof(sk_matrix44_t, m03),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m03),
    0,
    (int32_t)offsetof(sk_matrix44_t, m10),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m10),
    0,
    (int32_t)offsetof(sk_matrix44_t, m11),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m11),
    0,
    (int32_t)offsetof(sk_matrix44_t, m12),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m12),
    0,
    (int32_t)offsetof(sk_matrix44_t, m13),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m13),
    0,
    (int32_t)offsetof(sk_matrix44_t, m20),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m20),
    0,
    (int32_t)offsetof(sk_matrix44_t, m21),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m21),
    0,
    (int32_t)offsetof(sk_matrix44_t, m22),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m22),
    0,
    (int32_t)offsetof(sk_matrix44_t, m23),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m23),
    0,
    (int32_t)offsetof(sk_matrix44_t, m30),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m30),
    0,
    (int32_t)offsetof(sk_matrix44_t, m31),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m31),
    0,
    (int32_t)offsetof(sk_matrix44_t, m32),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m32),
    0,
    (int32_t)offsetof(sk_matrix44_t, m33),
    (int32_t)sizeof(((sk_matrix44_t *)0)->m33),
    0,
  };
  int32_t *result = moonbit_make_int32_array(49, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_point3_make(float arg_x, float arg_y, float arg_z) {
  sk_point3_t value = { 0 };
  value.x = arg_x;
  value.y = arg_y;
  value.z = arg_z;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_point3_t), 0);
  memcpy(bytes, &value, sizeof(sk_point3_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_point3_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_point3_t),
    (int32_t)offsetof(sk_point3_t, x),
    (int32_t)sizeof(((sk_point3_t *)0)->x),
    0,
    (int32_t)offsetof(sk_point3_t, y),
    (int32_t)sizeof(((sk_point3_t *)0)->y),
    0,
    (int32_t)offsetof(sk_point3_t, z),
    (int32_t)sizeof(((sk_point3_t *)0)->z),
    0,
  };
  int32_t *result = moonbit_make_int32_array(10, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_ipoint_make(int32_t arg_x, int32_t arg_y) {
  sk_ipoint_t value = { 0 };
  value.x = arg_x;
  value.y = arg_y;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_ipoint_t), 0);
  memcpy(bytes, &value, sizeof(sk_ipoint_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_ipoint_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_ipoint_t),
    (int32_t)offsetof(sk_ipoint_t, x),
    (int32_t)sizeof(((sk_ipoint_t *)0)->x),
    ((int32_t)-1 < (int32_t)0),
    (int32_t)offsetof(sk_ipoint_t, y),
    (int32_t)sizeof(((sk_ipoint_t *)0)->y),
    ((int32_t)-1 < (int32_t)0),
  };
  int32_t *result = moonbit_make_int32_array(7, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_size_make(float arg_w, float arg_h) {
  sk_size_t value = { 0 };
  value.w = arg_w;
  value.h = arg_h;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_size_t), 0);
  memcpy(bytes, &value, sizeof(sk_size_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_size_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_size_t),
    (int32_t)offsetof(sk_size_t, w),
    (int32_t)sizeof(((sk_size_t *)0)->w),
    0,
    (int32_t)offsetof(sk_size_t, h),
    (int32_t)sizeof(((sk_size_t *)0)->h),
    0,
  };
  int32_t *result = moonbit_make_int32_array(7, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_isize_make(int32_t arg_w, int32_t arg_h) {
  sk_isize_t value = { 0 };
  value.w = arg_w;
  value.h = arg_h;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_isize_t), 0);
  memcpy(bytes, &value, sizeof(sk_isize_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_isize_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_isize_t),
    (int32_t)offsetof(sk_isize_t, w),
    (int32_t)sizeof(((sk_isize_t *)0)->w),
    ((int32_t)-1 < (int32_t)0),
    (int32_t)offsetof(sk_isize_t, h),
    (int32_t)sizeof(((sk_isize_t *)0)->h),
    ((int32_t)-1 < (int32_t)0),
  };
  int32_t *result = moonbit_make_int32_array(7, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_fontmetrics_make(uint32_t arg_f_flags, float arg_f_top, float arg_f_ascent, float arg_f_descent, float arg_f_bottom, float arg_f_leading, float arg_f_avg_char_width, float arg_f_max_char_width, float arg_f_x_min, float arg_f_x_max, float arg_f_x_height, float arg_f_cap_height, float arg_f_underline_thickness, float arg_f_underline_position, float arg_f_strikeout_thickness, float arg_f_strikeout_position) {
  sk_fontmetrics_t value = { 0 };
  value.fFlags = arg_f_flags;
  value.fTop = arg_f_top;
  value.fAscent = arg_f_ascent;
  value.fDescent = arg_f_descent;
  value.fBottom = arg_f_bottom;
  value.fLeading = arg_f_leading;
  value.fAvgCharWidth = arg_f_avg_char_width;
  value.fMaxCharWidth = arg_f_max_char_width;
  value.fXMin = arg_f_x_min;
  value.fXMax = arg_f_x_max;
  value.fXHeight = arg_f_x_height;
  value.fCapHeight = arg_f_cap_height;
  value.fUnderlineThickness = arg_f_underline_thickness;
  value.fUnderlinePosition = arg_f_underline_position;
  value.fStrikeoutThickness = arg_f_strikeout_thickness;
  value.fStrikeoutPosition = arg_f_strikeout_position;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_fontmetrics_t), 0);
  memcpy(bytes, &value, sizeof(sk_fontmetrics_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_fontmetrics_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_fontmetrics_t),
    (int32_t)offsetof(sk_fontmetrics_t, fFlags),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fFlags),
    ((uint32_t)-1 < (uint32_t)0),
    (int32_t)offsetof(sk_fontmetrics_t, fTop),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fTop),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fAscent),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fAscent),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fDescent),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fDescent),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fBottom),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fBottom),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fLeading),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fLeading),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fAvgCharWidth),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fAvgCharWidth),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fMaxCharWidth),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fMaxCharWidth),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fXMin),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fXMin),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fXMax),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fXMax),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fXHeight),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fXHeight),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fCapHeight),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fCapHeight),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fUnderlineThickness),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fUnderlineThickness),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fUnderlinePosition),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fUnderlinePosition),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fStrikeoutThickness),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fStrikeoutThickness),
    0,
    (int32_t)offsetof(sk_fontmetrics_t, fStrikeoutPosition),
    (int32_t)sizeof(((sk_fontmetrics_t *)0)->fStrikeoutPosition),
    0,
  };
  int32_t *result = moonbit_make_int32_array(49, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_imageinfo_make(sk_colorspace_t * arg_colorspace, int32_t arg_width, int32_t arg_height, sk_colortype_t arg_color_type, sk_alphatype_t arg_alpha_type) {
  sk_imageinfo_t value = { 0 };
  value.colorspace = arg_colorspace;
  value.width = arg_width;
  value.height = arg_height;
  value.colorType = arg_color_type;
  value.alphaType = arg_alpha_type;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_imageinfo_t), 0);
  memcpy(bytes, &value, sizeof(sk_imageinfo_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_imageinfo_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_imageinfo_t),
    (int32_t)offsetof(sk_imageinfo_t, colorspace),
    (int32_t)sizeof(((sk_imageinfo_t *)0)->colorspace),
    0,
    (int32_t)offsetof(sk_imageinfo_t, width),
    (int32_t)sizeof(((sk_imageinfo_t *)0)->width),
    ((int32_t)-1 < (int32_t)0),
    (int32_t)offsetof(sk_imageinfo_t, height),
    (int32_t)sizeof(((sk_imageinfo_t *)0)->height),
    ((int32_t)-1 < (int32_t)0),
    (int32_t)offsetof(sk_imageinfo_t, colorType),
    (int32_t)sizeof(((sk_imageinfo_t *)0)->colorType),
    ((sk_colortype_t)-1 < (sk_colortype_t)0),
    (int32_t)offsetof(sk_imageinfo_t, alphaType),
    (int32_t)sizeof(((sk_imageinfo_t *)0)->alphaType),
    ((sk_alphatype_t)-1 < (sk_alphatype_t)0),
  };
  int32_t *result = moonbit_make_int32_array(16, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_rsxform_make(float arg_f_s_cos, float arg_f_s_sin, float arg_f_tx, float arg_f_ty) {
  sk_rsxform_t value = { 0 };
  value.fSCos = arg_f_s_cos;
  value.fSSin = arg_f_s_sin;
  value.fTX = arg_f_tx;
  value.fTY = arg_f_ty;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_rsxform_t), 0);
  memcpy(bytes, &value, sizeof(sk_rsxform_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_rsxform_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_rsxform_t),
    (int32_t)offsetof(sk_rsxform_t, fSCos),
    (int32_t)sizeof(((sk_rsxform_t *)0)->fSCos),
    0,
    (int32_t)offsetof(sk_rsxform_t, fSSin),
    (int32_t)sizeof(((sk_rsxform_t *)0)->fSSin),
    0,
    (int32_t)offsetof(sk_rsxform_t, fTX),
    (int32_t)sizeof(((sk_rsxform_t *)0)->fTX),
    0,
    (int32_t)offsetof(sk_rsxform_t, fTY),
    (int32_t)sizeof(((sk_rsxform_t *)0)->fTY),
    0,
  };
  int32_t *result = moonbit_make_int32_array(13, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_cubicresampler_make(float arg_f_b, float arg_f_c) {
  sk_cubic_resampler_t value = { 0 };
  value.fB = arg_f_b;
  value.fC = arg_f_c;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_cubic_resampler_t), 0);
  memcpy(bytes, &value, sizeof(sk_cubic_resampler_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_cubicresampler_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_cubic_resampler_t),
    (int32_t)offsetof(sk_cubic_resampler_t, fB),
    (int32_t)sizeof(((sk_cubic_resampler_t *)0)->fB),
    0,
    (int32_t)offsetof(sk_cubic_resampler_t, fC),
    (int32_t)sizeof(((sk_cubic_resampler_t *)0)->fC),
    0,
  };
  int32_t *result = moonbit_make_int32_array(7, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_samplingoptions_make(int32_t arg_f_max_aniso, int32_t arg_f_use_cubic, moonbit_bytes_t arg_f_cubic, int32_t arg_f_cubic_offset, sk_filter_mode_t arg_f_filter, sk_mipmap_mode_t arg_f_mipmap) {
  sk_sampling_options_t value = { 0 };
  value.fMaxAniso = arg_f_max_aniso;
  value.fUseCubic = arg_f_use_cubic;
  memcpy(&value.fCubic, arg_f_cubic + arg_f_cubic_offset, sizeof(value.fCubic));
  value.fFilter = arg_f_filter;
  value.fMipmap = arg_f_mipmap;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_sampling_options_t), 0);
  memcpy(bytes, &value, sizeof(sk_sampling_options_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t *moonbit_skia_samplingoptions_layout(void) {
  static const int32_t layout[] = {
    (int32_t)sizeof(sk_sampling_options_t),
    (int32_t)offsetof(sk_sampling_options_t, fMaxAniso),
    (int32_t)sizeof(((sk_sampling_options_t *)0)->fMaxAniso),
    ((int)-1 < (int)0),
    (int32_t)offsetof(sk_sampling_options_t, fUseCubic),
    (int32_t)sizeof(((sk_sampling_options_t *)0)->fUseCubic),
    0,
    (int32_t)offsetof(sk_sampling_options_t, fCubic),
    (int32_t)sizeof(((sk_sampling_options_t *)0)->fCubic),
    0,
    (int32_t)offsetof(sk_sampling_options_t, fFilter),
    (int32_t)sizeof(((sk_sampling_options_t *)0)->fFilter),
    ((sk_filter_mode_t)-1 < (sk_filter_mode_t)0),
    (int32_t)offsetof(sk_sampling_options_t, fMipmap),
    (int32_t)sizeof(((sk_sampling_options_t *)0)->fMipmap),
    ((sk_mipmap_mode_t)-1 < (sk_mipmap_mode_t)0),
  };
  int32_t *result = moonbit_make_int32_array(16, 0);
  memcpy(result, layout, sizeof(layout));
  return result;
}
