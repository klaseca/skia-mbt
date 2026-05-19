// Generated file. Do not edit by hand.

#include <include/c/sk_types.h>
#include <moonbit.h>
#include <stdint.h>
#include <string.h>

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_color4f_make(float fR, float fG, float fB, float fA) {
  sk_color4f_t value = { 0 };
  value.fR = fR;
  value.fG = fG;
  value.fB = fB;
  value.fA = fA;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_color4f_t), 0);
  memcpy(bytes, &value, sizeof(sk_color4f_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_color4f_fr(moonbit_bytes_t self) {
  return ((sk_color4f_t *)self)->fR;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_color4f_fg(moonbit_bytes_t self) {
  return ((sk_color4f_t *)self)->fG;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_color4f_fb(moonbit_bytes_t self) {
  return ((sk_color4f_t *)self)->fB;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_color4f_fa(moonbit_bytes_t self) {
  return ((sk_color4f_t *)self)->fA;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_point_make(float x, float y) {
  sk_point_t value = { 0 };
  value.x = x;
  value.y = y;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_point_t), 0);
  memcpy(bytes, &value, sizeof(sk_point_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_point_x(moonbit_bytes_t self) {
  return ((sk_point_t *)self)->x;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_point_y(moonbit_bytes_t self) {
  return ((sk_point_t *)self)->y;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_irect_make(int32_t left, int32_t top, int32_t right, int32_t bottom) {
  sk_irect_t value = { 0 };
  value.left = left;
  value.top = top;
  value.right = right;
  value.bottom = bottom;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_irect_t), 0);
  memcpy(bytes, &value, sizeof(sk_irect_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_irect_left(moonbit_bytes_t self) {
  return ((sk_irect_t *)self)->left;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_irect_top(moonbit_bytes_t self) {
  return ((sk_irect_t *)self)->top;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_irect_right(moonbit_bytes_t self) {
  return ((sk_irect_t *)self)->right;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_irect_bottom(moonbit_bytes_t self) {
  return ((sk_irect_t *)self)->bottom;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_rect_make(float left, float top, float right, float bottom) {
  sk_rect_t value = { 0 };
  value.left = left;
  value.top = top;
  value.right = right;
  value.bottom = bottom;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_rect_t), 0);
  memcpy(bytes, &value, sizeof(sk_rect_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rect_left(moonbit_bytes_t self) {
  return ((sk_rect_t *)self)->left;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rect_top(moonbit_bytes_t self) {
  return ((sk_rect_t *)self)->top;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rect_right(moonbit_bytes_t self) {
  return ((sk_rect_t *)self)->right;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rect_bottom(moonbit_bytes_t self) {
  return ((sk_rect_t *)self)->bottom;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_matrix_make(float scaleX, float skewX, float transX, float skewY, float scaleY, float transY, float persp0, float persp1, float persp2) {
  sk_matrix_t value = { 0 };
  value.scaleX = scaleX;
  value.skewX = skewX;
  value.transX = transX;
  value.skewY = skewY;
  value.scaleY = scaleY;
  value.transY = transY;
  value.persp0 = persp0;
  value.persp1 = persp1;
  value.persp2 = persp2;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_matrix_t), 0);
  memcpy(bytes, &value, sizeof(sk_matrix_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_scalex(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->scaleX;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_skewx(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->skewX;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_transx(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->transX;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_skewy(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->skewY;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_scaley(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->scaleY;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_transy(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->transY;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_persp0(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->persp0;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_persp1(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->persp1;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix_persp2(moonbit_bytes_t self) {
  return ((sk_matrix_t *)self)->persp2;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_matrix44_make(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13, float m20, float m21, float m22, float m23, float m30, float m31, float m32, float m33) {
  sk_matrix44_t value = { 0 };
  value.m00 = m00;
  value.m01 = m01;
  value.m02 = m02;
  value.m03 = m03;
  value.m10 = m10;
  value.m11 = m11;
  value.m12 = m12;
  value.m13 = m13;
  value.m20 = m20;
  value.m21 = m21;
  value.m22 = m22;
  value.m23 = m23;
  value.m30 = m30;
  value.m31 = m31;
  value.m32 = m32;
  value.m33 = m33;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_matrix44_t), 0);
  memcpy(bytes, &value, sizeof(sk_matrix44_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m00(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m00;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m01(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m01;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m02(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m02;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m03(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m03;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m10(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m10;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m11(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m11;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m12(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m12;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m13(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m13;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m20(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m20;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m21(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m21;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m22(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m22;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m23(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m23;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m30(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m30;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m31(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m31;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m32(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m32;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_matrix44_m33(moonbit_bytes_t self) {
  return ((sk_matrix44_t *)self)->m33;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_point3_make(float x, float y, float z) {
  sk_point3_t value = { 0 };
  value.x = x;
  value.y = y;
  value.z = z;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_point3_t), 0);
  memcpy(bytes, &value, sizeof(sk_point3_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_point3_x(moonbit_bytes_t self) {
  return ((sk_point3_t *)self)->x;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_point3_y(moonbit_bytes_t self) {
  return ((sk_point3_t *)self)->y;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_point3_z(moonbit_bytes_t self) {
  return ((sk_point3_t *)self)->z;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_ipoint_make(int32_t x, int32_t y) {
  sk_ipoint_t value = { 0 };
  value.x = x;
  value.y = y;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_ipoint_t), 0);
  memcpy(bytes, &value, sizeof(sk_ipoint_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_ipoint_x(moonbit_bytes_t self) {
  return ((sk_ipoint_t *)self)->x;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_ipoint_y(moonbit_bytes_t self) {
  return ((sk_ipoint_t *)self)->y;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_size_make(float w, float h) {
  sk_size_t value = { 0 };
  value.w = w;
  value.h = h;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_size_t), 0);
  memcpy(bytes, &value, sizeof(sk_size_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_size_w(moonbit_bytes_t self) {
  return ((sk_size_t *)self)->w;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_size_h(moonbit_bytes_t self) {
  return ((sk_size_t *)self)->h;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_isize_make(int32_t w, int32_t h) {
  sk_isize_t value = { 0 };
  value.w = w;
  value.h = h;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_isize_t), 0);
  memcpy(bytes, &value, sizeof(sk_isize_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_isize_w(moonbit_bytes_t self) {
  return ((sk_isize_t *)self)->w;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_isize_h(moonbit_bytes_t self) {
  return ((sk_isize_t *)self)->h;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_fontmetrics_make(uint32_t fFlags, float fTop, float fAscent, float fDescent, float fBottom, float fLeading, float fAvgCharWidth, float fMaxCharWidth, float fXMin, float fXMax, float fXHeight, float fCapHeight, float fUnderlineThickness, float fUnderlinePosition, float fStrikeoutThickness, float fStrikeoutPosition) {
  sk_fontmetrics_t value = { 0 };
  value.fFlags = fFlags;
  value.fTop = fTop;
  value.fAscent = fAscent;
  value.fDescent = fDescent;
  value.fBottom = fBottom;
  value.fLeading = fLeading;
  value.fAvgCharWidth = fAvgCharWidth;
  value.fMaxCharWidth = fMaxCharWidth;
  value.fXMin = fXMin;
  value.fXMax = fXMax;
  value.fXHeight = fXHeight;
  value.fCapHeight = fCapHeight;
  value.fUnderlineThickness = fUnderlineThickness;
  value.fUnderlinePosition = fUnderlinePosition;
  value.fStrikeoutThickness = fStrikeoutThickness;
  value.fStrikeoutPosition = fStrikeoutPosition;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_fontmetrics_t), 0);
  memcpy(bytes, &value, sizeof(sk_fontmetrics_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
uint32_t moonbit_skia_fontmetrics_fflags(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fFlags;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_ftop(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fTop;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fascent(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fAscent;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fdescent(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fDescent;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fbottom(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fBottom;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fleading(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fLeading;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_favgcharwidth(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fAvgCharWidth;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fmaxcharwidth(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fMaxCharWidth;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fxmin(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fXMin;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fxmax(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fXMax;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fxheight(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fXHeight;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fcapheight(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fCapHeight;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_funderlinethickness(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fUnderlineThickness;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_funderlineposition(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fUnderlinePosition;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fstrikeoutthickness(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fStrikeoutThickness;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_fontmetrics_fstrikeoutposition(moonbit_bytes_t self) {
  return ((sk_fontmetrics_t *)self)->fStrikeoutPosition;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_imageinfo_make(sk_colorspace_t * colorspace, int32_t width, int32_t height, sk_colortype_t colorType, sk_alphatype_t alphaType) {
  sk_imageinfo_t value = { 0 };
  value.colorspace = colorspace;
  value.width = width;
  value.height = height;
  value.colorType = colorType;
  value.alphaType = alphaType;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_imageinfo_t), 0);
  memcpy(bytes, &value, sizeof(sk_imageinfo_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
sk_colorspace_t * moonbit_skia_imageinfo_colorspace(moonbit_bytes_t self) {
  return ((sk_imageinfo_t *)self)->colorspace;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_imageinfo_width(moonbit_bytes_t self) {
  return ((sk_imageinfo_t *)self)->width;
}

MOONBIT_FFI_EXPORT
int32_t moonbit_skia_imageinfo_height(moonbit_bytes_t self) {
  return ((sk_imageinfo_t *)self)->height;
}

MOONBIT_FFI_EXPORT
sk_colortype_t moonbit_skia_imageinfo_colortype(moonbit_bytes_t self) {
  return ((sk_imageinfo_t *)self)->colorType;
}

MOONBIT_FFI_EXPORT
sk_alphatype_t moonbit_skia_imageinfo_alphatype(moonbit_bytes_t self) {
  return ((sk_imageinfo_t *)self)->alphaType;
}

MOONBIT_FFI_EXPORT
moonbit_bytes_t moonbit_skia_rsxform_make(float fSCos, float fSSin, float fTX, float fTY) {
  sk_rsxform_t value = { 0 };
  value.fSCos = fSCos;
  value.fSSin = fSSin;
  value.fTX = fTX;
  value.fTY = fTY;
  moonbit_bytes_t bytes = moonbit_make_bytes(sizeof(sk_rsxform_t), 0);
  memcpy(bytes, &value, sizeof(sk_rsxform_t));
  return bytes;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rsxform_fscos(moonbit_bytes_t self) {
  return ((sk_rsxform_t *)self)->fSCos;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rsxform_fssin(moonbit_bytes_t self) {
  return ((sk_rsxform_t *)self)->fSSin;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rsxform_ftx(moonbit_bytes_t self) {
  return ((sk_rsxform_t *)self)->fTX;
}

MOONBIT_FFI_EXPORT
float moonbit_skia_rsxform_fty(moonbit_bytes_t self) {
  return ((sk_rsxform_t *)self)->fTY;
}
