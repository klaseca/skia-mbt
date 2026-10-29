// Generated file. Do not edit by hand.

///|
#external
pub type Refcnt

///|
pub fn Refcnt::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Refcnt::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Nvrefcnt

///|
pub fn Nvrefcnt::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Nvrefcnt::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Flattenable

///|
pub fn Flattenable::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Flattenable::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Surfaceprops

///|
pub fn Surfaceprops::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Surfaceprops::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
pub type Canvas

///|
#borrow(resource)
extern "c" fn canvas_is_null(resource : Canvas) -> Bool = "moonbit_skia_canvas_is_null"

///|
pub fn Canvas::is_null(self : Self) -> Bool {
  canvas_is_null(self)
}

///|
#external
pub type NodrawCanvas

///|
pub fn NodrawCanvas::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn NodrawCanvas::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type NwayCanvas

///|
pub fn NwayCanvas::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn NwayCanvas::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type OverdrawCanvas

///|
pub fn OverdrawCanvas::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn OverdrawCanvas::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
pub type Data

///|
#borrow(resource)
extern "c" fn data_is_null(resource : Data) -> Bool = "moonbit_skia_data_is_null"

///|
pub fn Data::is_null(self : Self) -> Bool {
  data_is_null(self)
}

///|
#external
pub type Drawable

///|
pub fn Drawable::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Drawable::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
pub type Image

///|
#borrow(resource)
extern "c" fn image_is_null(resource : Image) -> Bool = "moonbit_skia_image_is_null"

///|
pub fn Image::is_null(self : Self) -> Bool {
  image_is_null(self)
}

///|
#external
pub type Maskfilter

///|
pub fn Maskfilter::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Maskfilter::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
pub type Paint

///|
#borrow(resource)
extern "c" fn paint_is_null(resource : Paint) -> Bool = "moonbit_skia_paint_is_null"

///|
pub fn Paint::is_null(self : Self) -> Bool {
  paint_is_null(self)
}

///|
pub type Font

///|
#borrow(resource)
extern "c" fn font_is_null(resource : Font) -> Bool = "moonbit_skia_font_is_null"

///|
pub fn Font::is_null(self : Self) -> Bool {
  font_is_null(self)
}

///|
pub type Path

///|
#borrow(resource)
extern "c" fn path_is_null(resource : Path) -> Bool = "moonbit_skia_path_is_null"

///|
pub fn Path::is_null(self : Self) -> Bool {
  path_is_null(self)
}

///|
#external
pub type Pathbuilder

///|
pub fn Pathbuilder::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Pathbuilder::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Picture

///|
pub fn Picture::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Picture::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type PictureRecorder

///|
pub fn PictureRecorder::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn PictureRecorder::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type BbhFactory

///|
pub fn BbhFactory::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn BbhFactory::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type RtreeFactory

///|
pub fn RtreeFactory::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn RtreeFactory::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Shader

///|
pub fn Shader::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Shader::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
pub type Surface

///|
#borrow(resource)
extern "c" fn surface_is_null(resource : Surface) -> Bool = "moonbit_skia_surface_is_null"

///|
pub fn Surface::is_null(self : Self) -> Bool {
  surface_is_null(self)
}

///|
#external
pub type Region

///|
pub fn Region::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Region::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type RegionIterator

///|
pub fn RegionIterator::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn RegionIterator::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type RegionCliperator

///|
pub fn RegionCliperator::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn RegionCliperator::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type RegionSpanerator

///|
pub fn RegionSpanerator::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn RegionSpanerator::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type StringLib

///|
pub fn StringLib::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn StringLib::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Bitmap

///|
pub fn Bitmap::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Bitmap::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Pixmap

///|
pub fn Pixmap::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Pixmap::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Colorfilter

///|
pub fn Colorfilter::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Colorfilter::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Imagefilter

///|
pub fn Imagefilter::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Imagefilter::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Blender

///|
pub fn Blender::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Blender::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
pub type Typeface

///|
#borrow(resource)
extern "c" fn typeface_is_null(resource : Typeface) -> Bool = "moonbit_skia_typeface_is_null"

///|
pub fn Typeface::is_null(self : Self) -> Bool {
  typeface_is_null(self)
}

///|
#external
pub type Fontmgr

///|
pub fn Fontmgr::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Fontmgr::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Fontstyle

///|
pub fn Fontstyle::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Fontstyle::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Fontstyleset

///|
pub fn Fontstyleset::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Fontstyleset::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Codec

///|
pub fn Codec::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Codec::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Colorspace

///|
pub fn Colorspace::to_pointer(self : Self) -> Pointer = "%identity"

///|
fn Colorspace::from_pointer(pointer : Pointer) -> Self = "%identity"

///|
pub fn Colorspace::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Stream

///|
pub fn Stream::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Stream::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type StreamFilestream

///|
pub fn StreamFilestream::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn StreamFilestream::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type StreamAsset

///|
pub fn StreamAsset::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn StreamAsset::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type StreamMemorystream

///|
pub fn StreamMemorystream::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn StreamMemorystream::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type StreamStreamrewindable

///|
pub fn StreamStreamrewindable::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn StreamStreamrewindable::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Wstream

///|
pub fn Wstream::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Wstream::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type WstreamFilestream

///|
pub fn WstreamFilestream::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn WstreamFilestream::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type WstreamDynamicmemorystream

///|
pub fn WstreamDynamicmemorystream::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn WstreamDynamicmemorystream::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Document

///|
pub fn Document::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Document::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type PathIterator

///|
pub fn PathIterator::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn PathIterator::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type PathRawiterator

///|
pub fn PathRawiterator::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn PathRawiterator::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type PathEffect

///|
pub fn PathEffect::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn PathEffect::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type PixelrefFactory

///|
pub fn PixelrefFactory::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn PixelrefFactory::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrBackendrendertarget

///|
pub fn GrBackendrendertarget::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrBackendrendertarget::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrBackendtexture

///|
pub fn GrBackendtexture::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrBackendtexture::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrDirectContext

///|
pub fn GrDirectContext::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrDirectContext::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrRecordingContext

///|
pub fn GrRecordingContext::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrRecordingContext::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrGlinterface

///|
pub fn GrGlinterface::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrGlinterface::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type VkInstance

///|
pub fn VkInstance::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn VkInstance::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrVkinterface

///|
pub fn GrVkinterface::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrVkinterface::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type VkPhysicalDevice

///|
pub fn VkPhysicalDevice::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn VkPhysicalDevice::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type VkPhysicalDeviceFeatures

///|
pub fn VkPhysicalDeviceFeatures::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn VkPhysicalDeviceFeatures::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type VkPhysicalDeviceFeatures2

///|
pub fn VkPhysicalDeviceFeatures2::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn VkPhysicalDeviceFeatures2::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type VkDevice

///|
pub fn VkDevice::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn VkDevice::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type VkQueue

///|
pub fn VkQueue::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn VkQueue::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrVkExtensions

///|
pub fn GrVkExtensions::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrVkExtensions::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrVkMemoryAllocator

///|
pub fn GrVkMemoryAllocator::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrVkMemoryAllocator::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Opbuilder

///|
pub fn Opbuilder::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Opbuilder::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Pathmeasure

///|
pub fn Pathmeasure::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Pathmeasure::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Svgcanvas

///|
pub fn Svgcanvas::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Svgcanvas::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Vertices

///|
pub fn Vertices::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Vertices::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type ColorspaceIccProfile

///|
pub fn ColorspaceIccProfile::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn ColorspaceIccProfile::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Rrect

///|
pub fn Rrect::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Rrect::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Textblob

///|
pub fn Textblob::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Textblob::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type TextblobBuilder

///|
pub fn TextblobBuilder::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn TextblobBuilder::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Tracememorydump

///|
pub fn Tracememorydump::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Tracememorydump::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type Runtimeeffect

///|
pub fn Runtimeeffect::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Runtimeeffect::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkottieAnimation

///|
pub fn SkottieAnimation::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkottieAnimation::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkottieAnimationBuilder

///|
pub fn SkottieAnimationBuilder::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkottieAnimationBuilder::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkottieResourceProvider

///|
pub fn SkottieResourceProvider::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkottieResourceProvider::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkottiePropertyObserver

///|
pub fn SkottiePropertyObserver::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkottiePropertyObserver::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkottieLogger

///|
pub fn SkottieLogger::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkottieLogger::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkottieMarkerObserver

///|
pub fn SkottieMarkerObserver::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkottieMarkerObserver::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SksgInvalidationController

///|
pub fn SksgInvalidationController::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SksgInvalidationController::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkresourcesImageAsset

///|
pub fn SkresourcesImageAsset::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkresourcesImageAsset::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkresourcesMultiFrameImageAsset

///|
pub fn SkresourcesMultiFrameImageAsset::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkresourcesMultiFrameImageAsset::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkresourcesExternalTrackAsset

///|
pub fn SkresourcesExternalTrackAsset::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkresourcesExternalTrackAsset::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type SkresourcesResourceProvider

///|
pub fn SkresourcesResourceProvider::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn SkresourcesResourceProvider::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type D3dDxgiAdapter

///|
pub fn D3dDxgiAdapter::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn D3dDxgiAdapter::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type D3dD12Device

///|
pub fn D3dD12Device::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn D3dD12Device::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type D3dD12CommandQueue

///|
pub fn D3dD12CommandQueue::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn D3dD12CommandQueue::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type GrD3dMemoryAllocator

///|
pub fn GrD3dMemoryAllocator::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn GrD3dMemoryAllocator::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type D3dD12Resource

///|
pub fn D3dD12Resource::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn D3dD12Resource::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
#external
pub type D3dAlloc

///|
pub fn D3dAlloc::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn D3dAlloc::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
}

///|
struct Color4f {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn color4f_make(f_r : Float, f_g : Float, f_b : Float, f_a : Float) -> Bytes = "moonbit_skia_color4f_make"

///|
pub fn Color4f::Color4f(f_r : Float, f_g : Float, f_b : Float, f_a : Float) -> Color4f {
  { bytes: color4f_make(f_r, f_g, f_b, f_a), offset: 0 }
}

///|
extern "c" fn color4f_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_color4f_layout"

///|
let color4f_layout : FixedArray[Int32] = color4f_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Color4f::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + color4f_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Color4f::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, color4f_layout[0]), offset: 0 }
}

///|
pub fn Color4f::f_r(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + color4f_layout[1], color4f_layout[2], value_little_endian)
}

///|
pub fn Color4f::f_g(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + color4f_layout[4], color4f_layout[5], value_little_endian)
}

///|
pub fn Color4f::f_b(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + color4f_layout[7], color4f_layout[8], value_little_endian)
}

///|
pub fn Color4f::f_a(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + color4f_layout[10], color4f_layout[11], value_little_endian)
}

///|
struct Point {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn point_make(x : Float, y : Float) -> Bytes = "moonbit_skia_point_make"

///|
pub fn Point::Point(x : Float, y : Float) -> Point {
  { bytes: point_make(x, y), offset: 0 }
}

///|
extern "c" fn point_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_point_layout"

///|
let point_layout : FixedArray[Int32] = point_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Point::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + point_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Point::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, point_layout[0]), offset: 0 }
}

///|
pub fn Point::x(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + point_layout[1], point_layout[2], value_little_endian)
}

///|
pub fn Point::y(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + point_layout[4], point_layout[5], value_little_endian)
}

///|
struct Irect {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn irect_make(left : Int32, top : Int32, right : Int32, bottom : Int32) -> Bytes = "moonbit_skia_irect_make"

///|
pub fn Irect::Irect(left : Int32, top : Int32, right : Int32, bottom : Int32) -> Irect {
  { bytes: irect_make(left, top, right, bottom), offset: 0 }
}

///|
extern "c" fn irect_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_irect_layout"

///|
let irect_layout : FixedArray[Int32] = irect_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Irect::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + irect_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Irect::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, irect_layout[0]), offset: 0 }
}

///|
pub fn Irect::left(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + irect_layout[1], irect_layout[2], irect_layout[3] != 0, value_little_endian)
}

///|
pub fn Irect::top(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + irect_layout[4], irect_layout[5], irect_layout[6] != 0, value_little_endian)
}

///|
pub fn Irect::right(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + irect_layout[7], irect_layout[8], irect_layout[9] != 0, value_little_endian)
}

///|
pub fn Irect::bottom(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + irect_layout[10], irect_layout[11], irect_layout[12] != 0, value_little_endian)
}

///|
struct Rect {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn rect_make(left : Float, top : Float, right : Float, bottom : Float) -> Bytes = "moonbit_skia_rect_make"

///|
pub fn Rect::Rect(left : Float, top : Float, right : Float, bottom : Float) -> Rect {
  { bytes: rect_make(left, top, right, bottom), offset: 0 }
}

///|
extern "c" fn rect_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_rect_layout"

///|
let rect_layout : FixedArray[Int32] = rect_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Rect::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + rect_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Rect::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, rect_layout[0]), offset: 0 }
}

///|
pub fn Rect::left(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rect_layout[1], rect_layout[2], value_little_endian)
}

///|
pub fn Rect::top(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rect_layout[4], rect_layout[5], value_little_endian)
}

///|
pub fn Rect::right(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rect_layout[7], rect_layout[8], value_little_endian)
}

///|
pub fn Rect::bottom(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rect_layout[10], rect_layout[11], value_little_endian)
}

///|
struct Matrix {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn matrix_make(scale_x : Float, skew_x : Float, trans_x : Float, skew_y : Float, scale_y : Float, trans_y : Float, persp0 : Float, persp1 : Float, persp2 : Float) -> Bytes = "moonbit_skia_matrix_make"

///|
pub fn Matrix::Matrix(scale_x : Float, skew_x : Float, trans_x : Float, skew_y : Float, scale_y : Float, trans_y : Float, persp0 : Float, persp1 : Float, persp2 : Float) -> Matrix {
  { bytes: matrix_make(scale_x, skew_x, trans_x, skew_y, scale_y, trans_y, persp0, persp1, persp2), offset: 0 }
}

///|
extern "c" fn matrix_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_matrix_layout"

///|
let matrix_layout : FixedArray[Int32] = matrix_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Matrix::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + matrix_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Matrix::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, matrix_layout[0]), offset: 0 }
}

///|
pub fn Matrix::scale_x(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[1], matrix_layout[2], value_little_endian)
}

///|
pub fn Matrix::skew_x(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[4], matrix_layout[5], value_little_endian)
}

///|
pub fn Matrix::trans_x(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[7], matrix_layout[8], value_little_endian)
}

///|
pub fn Matrix::skew_y(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[10], matrix_layout[11], value_little_endian)
}

///|
pub fn Matrix::scale_y(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[13], matrix_layout[14], value_little_endian)
}

///|
pub fn Matrix::trans_y(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[16], matrix_layout[17], value_little_endian)
}

///|
pub fn Matrix::persp0(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[19], matrix_layout[20], value_little_endian)
}

///|
pub fn Matrix::persp1(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[22], matrix_layout[23], value_little_endian)
}

///|
pub fn Matrix::persp2(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix_layout[25], matrix_layout[26], value_little_endian)
}

///|
struct Matrix44 {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn matrix44_make(m00 : Float, m01 : Float, m02 : Float, m03 : Float, m10 : Float, m11 : Float, m12 : Float, m13 : Float, m20 : Float, m21 : Float, m22 : Float, m23 : Float, m30 : Float, m31 : Float, m32 : Float, m33 : Float) -> Bytes = "moonbit_skia_matrix44_make"

///|
pub fn Matrix44::Matrix44(m00 : Float, m01 : Float, m02 : Float, m03 : Float, m10 : Float, m11 : Float, m12 : Float, m13 : Float, m20 : Float, m21 : Float, m22 : Float, m23 : Float, m30 : Float, m31 : Float, m32 : Float, m33 : Float) -> Matrix44 {
  { bytes: matrix44_make(m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23, m30, m31, m32, m33), offset: 0 }
}

///|
extern "c" fn matrix44_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_matrix44_layout"

///|
let matrix44_layout : FixedArray[Int32] = matrix44_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Matrix44::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + matrix44_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Matrix44::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, matrix44_layout[0]), offset: 0 }
}

///|
pub fn Matrix44::m00(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[1], matrix44_layout[2], value_little_endian)
}

///|
pub fn Matrix44::m01(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[4], matrix44_layout[5], value_little_endian)
}

///|
pub fn Matrix44::m02(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[7], matrix44_layout[8], value_little_endian)
}

///|
pub fn Matrix44::m03(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[10], matrix44_layout[11], value_little_endian)
}

///|
pub fn Matrix44::m10(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[13], matrix44_layout[14], value_little_endian)
}

///|
pub fn Matrix44::m11(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[16], matrix44_layout[17], value_little_endian)
}

///|
pub fn Matrix44::m12(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[19], matrix44_layout[20], value_little_endian)
}

///|
pub fn Matrix44::m13(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[22], matrix44_layout[23], value_little_endian)
}

///|
pub fn Matrix44::m20(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[25], matrix44_layout[26], value_little_endian)
}

///|
pub fn Matrix44::m21(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[28], matrix44_layout[29], value_little_endian)
}

///|
pub fn Matrix44::m22(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[31], matrix44_layout[32], value_little_endian)
}

///|
pub fn Matrix44::m23(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[34], matrix44_layout[35], value_little_endian)
}

///|
pub fn Matrix44::m30(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[37], matrix44_layout[38], value_little_endian)
}

///|
pub fn Matrix44::m31(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[40], matrix44_layout[41], value_little_endian)
}

///|
pub fn Matrix44::m32(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[43], matrix44_layout[44], value_little_endian)
}

///|
pub fn Matrix44::m33(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + matrix44_layout[46], matrix44_layout[47], value_little_endian)
}

///|
struct Point3 {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn point3_make(x : Float, y : Float, z : Float) -> Bytes = "moonbit_skia_point3_make"

///|
pub fn Point3::Point3(x : Float, y : Float, z : Float) -> Point3 {
  { bytes: point3_make(x, y, z), offset: 0 }
}

///|
extern "c" fn point3_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_point3_layout"

///|
let point3_layout : FixedArray[Int32] = point3_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Point3::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + point3_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Point3::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, point3_layout[0]), offset: 0 }
}

///|
pub fn Point3::x(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + point3_layout[1], point3_layout[2], value_little_endian)
}

///|
pub fn Point3::y(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + point3_layout[4], point3_layout[5], value_little_endian)
}

///|
pub fn Point3::z(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + point3_layout[7], point3_layout[8], value_little_endian)
}

///|
struct Ipoint {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn ipoint_make(x : Int32, y : Int32) -> Bytes = "moonbit_skia_ipoint_make"

///|
pub fn Ipoint::Ipoint(x : Int32, y : Int32) -> Ipoint {
  { bytes: ipoint_make(x, y), offset: 0 }
}

///|
extern "c" fn ipoint_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_ipoint_layout"

///|
let ipoint_layout : FixedArray[Int32] = ipoint_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Ipoint::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + ipoint_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Ipoint::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, ipoint_layout[0]), offset: 0 }
}

///|
pub fn Ipoint::x(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + ipoint_layout[1], ipoint_layout[2], ipoint_layout[3] != 0, value_little_endian)
}

///|
pub fn Ipoint::y(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + ipoint_layout[4], ipoint_layout[5], ipoint_layout[6] != 0, value_little_endian)
}

///|
struct Size {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn size_make(w : Float, h : Float) -> Bytes = "moonbit_skia_size_make"

///|
pub fn Size::Size(w : Float, h : Float) -> Size {
  { bytes: size_make(w, h), offset: 0 }
}

///|
extern "c" fn size_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_size_layout"

///|
let size_layout : FixedArray[Int32] = size_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Size::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + size_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Size::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, size_layout[0]), offset: 0 }
}

///|
pub fn Size::w(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + size_layout[1], size_layout[2], value_little_endian)
}

///|
pub fn Size::h(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + size_layout[4], size_layout[5], value_little_endian)
}

///|
struct Isize {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn isize_make(w : Int32, h : Int32) -> Bytes = "moonbit_skia_isize_make"

///|
pub fn Isize::Isize(w : Int32, h : Int32) -> Isize {
  { bytes: isize_make(w, h), offset: 0 }
}

///|
extern "c" fn isize_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_isize_layout"

///|
let isize_layout : FixedArray[Int32] = isize_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Isize::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + isize_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Isize::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, isize_layout[0]), offset: 0 }
}

///|
pub fn Isize::w(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + isize_layout[1], isize_layout[2], isize_layout[3] != 0, value_little_endian)
}

///|
pub fn Isize::h(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + isize_layout[4], isize_layout[5], isize_layout[6] != 0, value_little_endian)
}

///|
struct Fontmetrics {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn fontmetrics_make(f_flags : UInt32, f_top : Float, f_ascent : Float, f_descent : Float, f_bottom : Float, f_leading : Float, f_avg_char_width : Float, f_max_char_width : Float, f_x_min : Float, f_x_max : Float, f_x_height : Float, f_cap_height : Float, f_underline_thickness : Float, f_underline_position : Float, f_strikeout_thickness : Float, f_strikeout_position : Float) -> Bytes = "moonbit_skia_fontmetrics_make"

///|
pub fn Fontmetrics::Fontmetrics(f_flags : UInt32, f_top : Float, f_ascent : Float, f_descent : Float, f_bottom : Float, f_leading : Float, f_avg_char_width : Float, f_max_char_width : Float, f_x_min : Float, f_x_max : Float, f_x_height : Float, f_cap_height : Float, f_underline_thickness : Float, f_underline_position : Float, f_strikeout_thickness : Float, f_strikeout_position : Float) -> Fontmetrics {
  { bytes: fontmetrics_make(f_flags, f_top, f_ascent, f_descent, f_bottom, f_leading, f_avg_char_width, f_max_char_width, f_x_min, f_x_max, f_x_height, f_cap_height, f_underline_thickness, f_underline_position, f_strikeout_thickness, f_strikeout_position), offset: 0 }
}

///|
extern "c" fn fontmetrics_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_fontmetrics_layout"

///|
let fontmetrics_layout : FixedArray[Int32] = fontmetrics_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Fontmetrics::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + fontmetrics_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Fontmetrics::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, fontmetrics_layout[0]), offset: 0 }
}

///|
pub fn Fontmetrics::f_flags(self : Self) -> UInt32 {
  read_integer(self.bytes, self.offset + fontmetrics_layout[1], fontmetrics_layout[2], fontmetrics_layout[3] != 0, value_little_endian)
}

///|
pub fn Fontmetrics::f_top(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[4], fontmetrics_layout[5], value_little_endian)
}

///|
pub fn Fontmetrics::f_ascent(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[7], fontmetrics_layout[8], value_little_endian)
}

///|
pub fn Fontmetrics::f_descent(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[10], fontmetrics_layout[11], value_little_endian)
}

///|
pub fn Fontmetrics::f_bottom(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[13], fontmetrics_layout[14], value_little_endian)
}

///|
pub fn Fontmetrics::f_leading(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[16], fontmetrics_layout[17], value_little_endian)
}

///|
pub fn Fontmetrics::f_avg_char_width(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[19], fontmetrics_layout[20], value_little_endian)
}

///|
pub fn Fontmetrics::f_max_char_width(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[22], fontmetrics_layout[23], value_little_endian)
}

///|
pub fn Fontmetrics::f_x_min(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[25], fontmetrics_layout[26], value_little_endian)
}

///|
pub fn Fontmetrics::f_x_max(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[28], fontmetrics_layout[29], value_little_endian)
}

///|
pub fn Fontmetrics::f_x_height(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[31], fontmetrics_layout[32], value_little_endian)
}

///|
pub fn Fontmetrics::f_cap_height(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[34], fontmetrics_layout[35], value_little_endian)
}

///|
pub fn Fontmetrics::f_underline_thickness(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[37], fontmetrics_layout[38], value_little_endian)
}

///|
pub fn Fontmetrics::f_underline_position(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[40], fontmetrics_layout[41], value_little_endian)
}

///|
pub fn Fontmetrics::f_strikeout_thickness(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[43], fontmetrics_layout[44], value_little_endian)
}

///|
pub fn Fontmetrics::f_strikeout_position(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + fontmetrics_layout[46], fontmetrics_layout[47], value_little_endian)
}

///|
struct Imageinfo {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn imageinfo_make(colorspace : Colorspace, width : Int32, height : Int32, color_type : Int32, alpha_type : Int32) -> Bytes = "moonbit_skia_imageinfo_make"

///|
pub fn Imageinfo::Imageinfo(colorspace : Colorspace, width : Int32, height : Int32, color_type : Int32, alpha_type : Int32) -> Imageinfo {
  { bytes: imageinfo_make(colorspace, width, height, color_type, alpha_type), offset: 0 }
}

///|
extern "c" fn imageinfo_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_imageinfo_layout"

///|
let imageinfo_layout : FixedArray[Int32] = imageinfo_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Imageinfo::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + imageinfo_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Imageinfo::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, imageinfo_layout[0]), offset: 0 }
}

///|
pub fn Imageinfo::colorspace(self : Self) -> Colorspace {
  Colorspace::from_pointer(value_read_pointer(self.bytes, self.offset + imageinfo_layout[1]))
}

///|
pub fn Imageinfo::width(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + imageinfo_layout[4], imageinfo_layout[5], imageinfo_layout[6] != 0, value_little_endian)
}

///|
pub fn Imageinfo::height(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + imageinfo_layout[7], imageinfo_layout[8], imageinfo_layout[9] != 0, value_little_endian)
}

///|
pub fn Imageinfo::color_type(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + imageinfo_layout[10], imageinfo_layout[11], imageinfo_layout[12] != 0, value_little_endian)
}

///|
pub fn Imageinfo::alpha_type(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + imageinfo_layout[13], imageinfo_layout[14], imageinfo_layout[15] != 0, value_little_endian)
}

///|
struct Rsxform {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn rsxform_make(f_s_cos : Float, f_s_sin : Float, f_tx : Float, f_ty : Float) -> Bytes = "moonbit_skia_rsxform_make"

///|
pub fn Rsxform::Rsxform(f_s_cos : Float, f_s_sin : Float, f_tx : Float, f_ty : Float) -> Rsxform {
  { bytes: rsxform_make(f_s_cos, f_s_sin, f_tx, f_ty), offset: 0 }
}

///|
extern "c" fn rsxform_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_rsxform_layout"

///|
let rsxform_layout : FixedArray[Int32] = rsxform_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn Rsxform::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + rsxform_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn Rsxform::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, rsxform_layout[0]), offset: 0 }
}

///|
pub fn Rsxform::f_s_cos(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rsxform_layout[1], rsxform_layout[2], value_little_endian)
}

///|
pub fn Rsxform::f_s_sin(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rsxform_layout[4], rsxform_layout[5], value_little_endian)
}

///|
pub fn Rsxform::f_tx(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rsxform_layout[7], rsxform_layout[8], value_little_endian)
}

///|
pub fn Rsxform::f_ty(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + rsxform_layout[10], rsxform_layout[11], value_little_endian)
}

///|
struct CubicResampler {
  bytes : Bytes
  offset : Int32
}

///|
extern "c" fn cubicresampler_make(f_b : Float, f_c : Float) -> Bytes = "moonbit_skia_cubicresampler_make"

///|
pub fn CubicResampler::CubicResampler(f_b : Float, f_c : Float) -> CubicResampler {
  { bytes: cubicresampler_make(f_b, f_c), offset: 0 }
}

///|
extern "c" fn cubicresampler_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_cubicresampler_layout"

///|
let cubicresampler_layout : FixedArray[Int32] = cubicresampler_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn CubicResampler::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + cubicresampler_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn CubicResampler::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, cubicresampler_layout[0]), offset: 0 }
}

///|
pub fn CubicResampler::f_b(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + cubicresampler_layout[1], cubicresampler_layout[2], value_little_endian)
}

///|
pub fn CubicResampler::f_c(self : Self) -> Float {
  value_read_float(self.bytes, self.offset + cubicresampler_layout[4], cubicresampler_layout[5], value_little_endian)
}

///|
struct SamplingOptions {
  bytes : Bytes
  offset : Int32
}

///|
#borrow(f_cubic)
extern "c" fn samplingoptions_make(f_max_aniso : Int32, f_use_cubic : Bool, f_cubic : Bytes, f_cubic_offset : Int32, f_filter : Int32, f_mipmap : Int32) -> Bytes = "moonbit_skia_samplingoptions_make"

///|
pub fn SamplingOptions::SamplingOptions(f_max_aniso : Int32, f_use_cubic : Bool, f_cubic : CubicResampler, f_filter : Int32, f_mipmap : Int32) -> SamplingOptions {
  { bytes: samplingoptions_make(f_max_aniso, f_use_cubic, f_cubic.bytes, f_cubic.offset, f_filter, f_mipmap), offset: 0 }
}

///|
extern "c" fn samplingoptions_layout_ffi() -> FixedArray[Int32] = "moonbit_skia_samplingoptions_layout"

///|
let samplingoptions_layout : FixedArray[Int32] = samplingoptions_layout_ffi()

///|
/// View exactly the structure bytes without copying; writes and native buffer reuse are shared.
pub fn SamplingOptions::as_bytes(self : Self) -> BytesView {
  self.bytes.exact_view(start=self.offset, end=self.offset + samplingoptions_layout[0])
}

///|
/// Copy the structure bytes into independent storage. Native pointers remain shallow copies.
pub fn SamplingOptions::copy(self : Self) -> Self {
  { bytes: value_copy_bytes(self.bytes, self.offset, samplingoptions_layout[0]), offset: 0 }
}

///|
pub fn SamplingOptions::f_max_aniso(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + samplingoptions_layout[1], samplingoptions_layout[2], samplingoptions_layout[3] != 0, value_little_endian)
}

///|
pub fn SamplingOptions::f_use_cubic(self : Self) -> Bool {
  value_read_bool(self.bytes, self.offset + samplingoptions_layout[4], samplingoptions_layout[5])
}

///|
/// A view into the original buffer; writes and native buffer reuse are shared.
pub fn SamplingOptions::f_cubic(self : Self) -> CubicResampler {
  { bytes: self.bytes, offset: self.offset + samplingoptions_layout[7] }
}

///|
pub fn SamplingOptions::f_filter(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + samplingoptions_layout[10], samplingoptions_layout[11], samplingoptions_layout[12] != 0, value_little_endian)
}

///|
pub fn SamplingOptions::f_mipmap(self : Self) -> Int32 {
  read_integer(self.bytes, self.offset + samplingoptions_layout[13], samplingoptions_layout[14], samplingoptions_layout[15] != 0, value_little_endian)
}

///|
pub const LINEAR_SK_FILTER_MODE : Int32 = 0

///|
pub const NONE_SK_MIPMAP_MODE : Int32 = 0
