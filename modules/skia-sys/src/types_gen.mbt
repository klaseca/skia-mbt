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
#external
pub type Data

///|
pub fn Data::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Data::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
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
#external
pub type Image

///|
pub fn Image::to_pointer(self : Self) -> Pointer = "%identity"

///|
pub fn Image::is_null(self : Self) -> Bool {
  self.to_pointer().is_null()
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
}

///|
extern "c" fn color4f_make(fR : Float, fG : Float, fB : Float, fA : Float) -> Bytes = "moonbit_skia_color4f_make"

///|
pub fn Color4f::Color4f(fR : Float, fG : Float, fB : Float, fA : Float) -> Color4f {
  { bytes: color4f_make(fR, fG, fB, fA) }
}

///|
pub fn Color4f::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn color4f_fR(bytes : Bytes) -> Float = "moonbit_skia_color4f_fr"

///|
pub fn Color4f::fR(self : Self) -> Float {
  color4f_fR(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn color4f_fG(bytes : Bytes) -> Float = "moonbit_skia_color4f_fg"

///|
pub fn Color4f::fG(self : Self) -> Float {
  color4f_fG(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn color4f_fB(bytes : Bytes) -> Float = "moonbit_skia_color4f_fb"

///|
pub fn Color4f::fB(self : Self) -> Float {
  color4f_fB(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn color4f_fA(bytes : Bytes) -> Float = "moonbit_skia_color4f_fa"

///|
pub fn Color4f::fA(self : Self) -> Float {
  color4f_fA(self.to_bytes())
}

///|
struct Point {
  bytes : Bytes
}

///|
extern "c" fn point_make(x : Float, y : Float) -> Bytes = "moonbit_skia_point_make"

///|
pub fn Point::Point(x : Float, y : Float) -> Point {
  { bytes: point_make(x, y) }
}

///|
pub fn Point::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn point_x(bytes : Bytes) -> Float = "moonbit_skia_point_x"

///|
pub fn Point::x(self : Self) -> Float {
  point_x(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn point_y(bytes : Bytes) -> Float = "moonbit_skia_point_y"

///|
pub fn Point::y(self : Self) -> Float {
  point_y(self.to_bytes())
}

///|
struct Irect {
  bytes : Bytes
}

///|
extern "c" fn irect_make(left : Int, top : Int, right : Int, bottom : Int) -> Bytes = "moonbit_skia_irect_make"

///|
pub fn Irect::Irect(left : Int, top : Int, right : Int, bottom : Int) -> Irect {
  { bytes: irect_make(left, top, right, bottom) }
}

///|
pub fn Irect::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn irect_left(bytes : Bytes) -> Int = "moonbit_skia_irect_left"

///|
pub fn Irect::left(self : Self) -> Int {
  irect_left(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn irect_top(bytes : Bytes) -> Int = "moonbit_skia_irect_top"

///|
pub fn Irect::top(self : Self) -> Int {
  irect_top(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn irect_right(bytes : Bytes) -> Int = "moonbit_skia_irect_right"

///|
pub fn Irect::right(self : Self) -> Int {
  irect_right(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn irect_bottom(bytes : Bytes) -> Int = "moonbit_skia_irect_bottom"

///|
pub fn Irect::bottom(self : Self) -> Int {
  irect_bottom(self.to_bytes())
}

///|
struct Rect {
  bytes : Bytes
}

///|
extern "c" fn rect_make(left : Float, top : Float, right : Float, bottom : Float) -> Bytes = "moonbit_skia_rect_make"

///|
pub fn Rect::Rect(left : Float, top : Float, right : Float, bottom : Float) -> Rect {
  { bytes: rect_make(left, top, right, bottom) }
}

///|
pub fn Rect::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn rect_left(bytes : Bytes) -> Float = "moonbit_skia_rect_left"

///|
pub fn Rect::left(self : Self) -> Float {
  rect_left(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn rect_top(bytes : Bytes) -> Float = "moonbit_skia_rect_top"

///|
pub fn Rect::top(self : Self) -> Float {
  rect_top(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn rect_right(bytes : Bytes) -> Float = "moonbit_skia_rect_right"

///|
pub fn Rect::right(self : Self) -> Float {
  rect_right(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn rect_bottom(bytes : Bytes) -> Float = "moonbit_skia_rect_bottom"

///|
pub fn Rect::bottom(self : Self) -> Float {
  rect_bottom(self.to_bytes())
}

///|
struct Matrix {
  bytes : Bytes
}

///|
extern "c" fn matrix_make(scaleX : Float, skewX : Float, transX : Float, skewY : Float, scaleY : Float, transY : Float, persp0 : Float, persp1 : Float, persp2 : Float) -> Bytes = "moonbit_skia_matrix_make"

///|
pub fn Matrix::Matrix(scaleX : Float, skewX : Float, transX : Float, skewY : Float, scaleY : Float, transY : Float, persp0 : Float, persp1 : Float, persp2 : Float) -> Matrix {
  { bytes: matrix_make(scaleX, skewX, transX, skewY, scaleY, transY, persp0, persp1, persp2) }
}

///|
pub fn Matrix::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn matrix_scaleX(bytes : Bytes) -> Float = "moonbit_skia_matrix_scalex"

///|
pub fn Matrix::scaleX(self : Self) -> Float {
  matrix_scaleX(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_skewX(bytes : Bytes) -> Float = "moonbit_skia_matrix_skewx"

///|
pub fn Matrix::skewX(self : Self) -> Float {
  matrix_skewX(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_transX(bytes : Bytes) -> Float = "moonbit_skia_matrix_transx"

///|
pub fn Matrix::transX(self : Self) -> Float {
  matrix_transX(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_skewY(bytes : Bytes) -> Float = "moonbit_skia_matrix_skewy"

///|
pub fn Matrix::skewY(self : Self) -> Float {
  matrix_skewY(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_scaleY(bytes : Bytes) -> Float = "moonbit_skia_matrix_scaley"

///|
pub fn Matrix::scaleY(self : Self) -> Float {
  matrix_scaleY(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_transY(bytes : Bytes) -> Float = "moonbit_skia_matrix_transy"

///|
pub fn Matrix::transY(self : Self) -> Float {
  matrix_transY(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_persp0(bytes : Bytes) -> Float = "moonbit_skia_matrix_persp0"

///|
pub fn Matrix::persp0(self : Self) -> Float {
  matrix_persp0(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_persp1(bytes : Bytes) -> Float = "moonbit_skia_matrix_persp1"

///|
pub fn Matrix::persp1(self : Self) -> Float {
  matrix_persp1(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix_persp2(bytes : Bytes) -> Float = "moonbit_skia_matrix_persp2"

///|
pub fn Matrix::persp2(self : Self) -> Float {
  matrix_persp2(self.to_bytes())
}

///|
struct Matrix44 {
  bytes : Bytes
}

///|
extern "c" fn matrix44_make(m00 : Float, m01 : Float, m02 : Float, m03 : Float, m10 : Float, m11 : Float, m12 : Float, m13 : Float, m20 : Float, m21 : Float, m22 : Float, m23 : Float, m30 : Float, m31 : Float, m32 : Float, m33 : Float) -> Bytes = "moonbit_skia_matrix44_make"

///|
pub fn Matrix44::Matrix44(m00 : Float, m01 : Float, m02 : Float, m03 : Float, m10 : Float, m11 : Float, m12 : Float, m13 : Float, m20 : Float, m21 : Float, m22 : Float, m23 : Float, m30 : Float, m31 : Float, m32 : Float, m33 : Float) -> Matrix44 {
  { bytes: matrix44_make(m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23, m30, m31, m32, m33) }
}

///|
pub fn Matrix44::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn matrix44_m00(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m00"

///|
pub fn Matrix44::m00(self : Self) -> Float {
  matrix44_m00(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m01(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m01"

///|
pub fn Matrix44::m01(self : Self) -> Float {
  matrix44_m01(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m02(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m02"

///|
pub fn Matrix44::m02(self : Self) -> Float {
  matrix44_m02(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m03(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m03"

///|
pub fn Matrix44::m03(self : Self) -> Float {
  matrix44_m03(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m10(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m10"

///|
pub fn Matrix44::m10(self : Self) -> Float {
  matrix44_m10(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m11(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m11"

///|
pub fn Matrix44::m11(self : Self) -> Float {
  matrix44_m11(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m12(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m12"

///|
pub fn Matrix44::m12(self : Self) -> Float {
  matrix44_m12(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m13(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m13"

///|
pub fn Matrix44::m13(self : Self) -> Float {
  matrix44_m13(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m20(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m20"

///|
pub fn Matrix44::m20(self : Self) -> Float {
  matrix44_m20(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m21(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m21"

///|
pub fn Matrix44::m21(self : Self) -> Float {
  matrix44_m21(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m22(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m22"

///|
pub fn Matrix44::m22(self : Self) -> Float {
  matrix44_m22(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m23(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m23"

///|
pub fn Matrix44::m23(self : Self) -> Float {
  matrix44_m23(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m30(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m30"

///|
pub fn Matrix44::m30(self : Self) -> Float {
  matrix44_m30(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m31(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m31"

///|
pub fn Matrix44::m31(self : Self) -> Float {
  matrix44_m31(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m32(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m32"

///|
pub fn Matrix44::m32(self : Self) -> Float {
  matrix44_m32(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn matrix44_m33(bytes : Bytes) -> Float = "moonbit_skia_matrix44_m33"

///|
pub fn Matrix44::m33(self : Self) -> Float {
  matrix44_m33(self.to_bytes())
}

///|
struct Point3 {
  bytes : Bytes
}

///|
extern "c" fn point3_make(x : Float, y : Float, z : Float) -> Bytes = "moonbit_skia_point3_make"

///|
pub fn Point3::Point3(x : Float, y : Float, z : Float) -> Point3 {
  { bytes: point3_make(x, y, z) }
}

///|
pub fn Point3::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn point3_x(bytes : Bytes) -> Float = "moonbit_skia_point3_x"

///|
pub fn Point3::x(self : Self) -> Float {
  point3_x(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn point3_y(bytes : Bytes) -> Float = "moonbit_skia_point3_y"

///|
pub fn Point3::y(self : Self) -> Float {
  point3_y(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn point3_z(bytes : Bytes) -> Float = "moonbit_skia_point3_z"

///|
pub fn Point3::z(self : Self) -> Float {
  point3_z(self.to_bytes())
}

///|
struct Ipoint {
  bytes : Bytes
}

///|
extern "c" fn ipoint_make(x : Int, y : Int) -> Bytes = "moonbit_skia_ipoint_make"

///|
pub fn Ipoint::Ipoint(x : Int, y : Int) -> Ipoint {
  { bytes: ipoint_make(x, y) }
}

///|
pub fn Ipoint::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn ipoint_x(bytes : Bytes) -> Int = "moonbit_skia_ipoint_x"

///|
pub fn Ipoint::x(self : Self) -> Int {
  ipoint_x(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn ipoint_y(bytes : Bytes) -> Int = "moonbit_skia_ipoint_y"

///|
pub fn Ipoint::y(self : Self) -> Int {
  ipoint_y(self.to_bytes())
}

///|
struct Size {
  bytes : Bytes
}

///|
extern "c" fn size_make(w : Float, h : Float) -> Bytes = "moonbit_skia_size_make"

///|
pub fn Size::Size(w : Float, h : Float) -> Size {
  { bytes: size_make(w, h) }
}

///|
pub fn Size::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn size_w(bytes : Bytes) -> Float = "moonbit_skia_size_w"

///|
pub fn Size::w(self : Self) -> Float {
  size_w(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn size_h(bytes : Bytes) -> Float = "moonbit_skia_size_h"

///|
pub fn Size::h(self : Self) -> Float {
  size_h(self.to_bytes())
}

///|
struct Isize {
  bytes : Bytes
}

///|
extern "c" fn isize_make(w : Int, h : Int) -> Bytes = "moonbit_skia_isize_make"

///|
pub fn Isize::Isize(w : Int, h : Int) -> Isize {
  { bytes: isize_make(w, h) }
}

///|
pub fn Isize::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn isize_w(bytes : Bytes) -> Int = "moonbit_skia_isize_w"

///|
pub fn Isize::w(self : Self) -> Int {
  isize_w(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn isize_h(bytes : Bytes) -> Int = "moonbit_skia_isize_h"

///|
pub fn Isize::h(self : Self) -> Int {
  isize_h(self.to_bytes())
}

///|
struct Fontmetrics {
  bytes : Bytes
}

///|
extern "c" fn fontmetrics_make(fFlags : UInt, fTop : Float, fAscent : Float, fDescent : Float, fBottom : Float, fLeading : Float, fAvgCharWidth : Float, fMaxCharWidth : Float, fXMin : Float, fXMax : Float, fXHeight : Float, fCapHeight : Float, fUnderlineThickness : Float, fUnderlinePosition : Float, fStrikeoutThickness : Float, fStrikeoutPosition : Float) -> Bytes = "moonbit_skia_fontmetrics_make"

///|
pub fn Fontmetrics::Fontmetrics(fFlags : UInt, fTop : Float, fAscent : Float, fDescent : Float, fBottom : Float, fLeading : Float, fAvgCharWidth : Float, fMaxCharWidth : Float, fXMin : Float, fXMax : Float, fXHeight : Float, fCapHeight : Float, fUnderlineThickness : Float, fUnderlinePosition : Float, fStrikeoutThickness : Float, fStrikeoutPosition : Float) -> Fontmetrics {
  { bytes: fontmetrics_make(fFlags, fTop, fAscent, fDescent, fBottom, fLeading, fAvgCharWidth, fMaxCharWidth, fXMin, fXMax, fXHeight, fCapHeight, fUnderlineThickness, fUnderlinePosition, fStrikeoutThickness, fStrikeoutPosition) }
}

///|
pub fn Fontmetrics::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fFlags(bytes : Bytes) -> UInt = "moonbit_skia_fontmetrics_fflags"

///|
pub fn Fontmetrics::fFlags(self : Self) -> UInt {
  fontmetrics_fFlags(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fTop(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_ftop"

///|
pub fn Fontmetrics::fTop(self : Self) -> Float {
  fontmetrics_fTop(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fAscent(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fascent"

///|
pub fn Fontmetrics::fAscent(self : Self) -> Float {
  fontmetrics_fAscent(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fDescent(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fdescent"

///|
pub fn Fontmetrics::fDescent(self : Self) -> Float {
  fontmetrics_fDescent(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fBottom(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fbottom"

///|
pub fn Fontmetrics::fBottom(self : Self) -> Float {
  fontmetrics_fBottom(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fLeading(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fleading"

///|
pub fn Fontmetrics::fLeading(self : Self) -> Float {
  fontmetrics_fLeading(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fAvgCharWidth(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_favgcharwidth"

///|
pub fn Fontmetrics::fAvgCharWidth(self : Self) -> Float {
  fontmetrics_fAvgCharWidth(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fMaxCharWidth(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fmaxcharwidth"

///|
pub fn Fontmetrics::fMaxCharWidth(self : Self) -> Float {
  fontmetrics_fMaxCharWidth(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fXMin(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fxmin"

///|
pub fn Fontmetrics::fXMin(self : Self) -> Float {
  fontmetrics_fXMin(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fXMax(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fxmax"

///|
pub fn Fontmetrics::fXMax(self : Self) -> Float {
  fontmetrics_fXMax(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fXHeight(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fxheight"

///|
pub fn Fontmetrics::fXHeight(self : Self) -> Float {
  fontmetrics_fXHeight(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fCapHeight(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fcapheight"

///|
pub fn Fontmetrics::fCapHeight(self : Self) -> Float {
  fontmetrics_fCapHeight(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fUnderlineThickness(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_funderlinethickness"

///|
pub fn Fontmetrics::fUnderlineThickness(self : Self) -> Float {
  fontmetrics_fUnderlineThickness(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fUnderlinePosition(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_funderlineposition"

///|
pub fn Fontmetrics::fUnderlinePosition(self : Self) -> Float {
  fontmetrics_fUnderlinePosition(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fStrikeoutThickness(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fstrikeoutthickness"

///|
pub fn Fontmetrics::fStrikeoutThickness(self : Self) -> Float {
  fontmetrics_fStrikeoutThickness(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn fontmetrics_fStrikeoutPosition(bytes : Bytes) -> Float = "moonbit_skia_fontmetrics_fstrikeoutposition"

///|
pub fn Fontmetrics::fStrikeoutPosition(self : Self) -> Float {
  fontmetrics_fStrikeoutPosition(self.to_bytes())
}

///|
struct Imageinfo {
  bytes : Bytes
}

///|
extern "c" fn imageinfo_make(colorspace : Colorspace, width : Int, height : Int, colorType : Int, alphaType : Int) -> Bytes = "moonbit_skia_imageinfo_make"

///|
pub fn Imageinfo::Imageinfo(colorspace : Colorspace, width : Int, height : Int, colorType : Int, alphaType : Int) -> Imageinfo {
  { bytes: imageinfo_make(colorspace, width, height, colorType, alphaType) }
}

///|
pub fn Imageinfo::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn imageinfo_colorspace(bytes : Bytes) -> Colorspace = "moonbit_skia_imageinfo_colorspace"

///|
pub fn Imageinfo::colorspace(self : Self) -> Colorspace {
  imageinfo_colorspace(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn imageinfo_width(bytes : Bytes) -> Int = "moonbit_skia_imageinfo_width"

///|
pub fn Imageinfo::width(self : Self) -> Int {
  imageinfo_width(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn imageinfo_height(bytes : Bytes) -> Int = "moonbit_skia_imageinfo_height"

///|
pub fn Imageinfo::height(self : Self) -> Int {
  imageinfo_height(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn imageinfo_colorType(bytes : Bytes) -> Int = "moonbit_skia_imageinfo_colortype"

///|
pub fn Imageinfo::colorType(self : Self) -> Int {
  imageinfo_colorType(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn imageinfo_alphaType(bytes : Bytes) -> Int = "moonbit_skia_imageinfo_alphatype"

///|
pub fn Imageinfo::alphaType(self : Self) -> Int {
  imageinfo_alphaType(self.to_bytes())
}

///|
struct Rsxform {
  bytes : Bytes
}

///|
extern "c" fn rsxform_make(fSCos : Float, fSSin : Float, fTX : Float, fTY : Float) -> Bytes = "moonbit_skia_rsxform_make"

///|
pub fn Rsxform::Rsxform(fSCos : Float, fSSin : Float, fTX : Float, fTY : Float) -> Rsxform {
  { bytes: rsxform_make(fSCos, fSSin, fTX, fTY) }
}

///|
pub fn Rsxform::to_bytes(self : Self) -> Bytes {
  self.bytes
}

///|
#borrow(bytes)
extern "c" fn rsxform_fSCos(bytes : Bytes) -> Float = "moonbit_skia_rsxform_fscos"

///|
pub fn Rsxform::fSCos(self : Self) -> Float {
  rsxform_fSCos(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn rsxform_fSSin(bytes : Bytes) -> Float = "moonbit_skia_rsxform_fssin"

///|
pub fn Rsxform::fSSin(self : Self) -> Float {
  rsxform_fSSin(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn rsxform_fTX(bytes : Bytes) -> Float = "moonbit_skia_rsxform_ftx"

///|
pub fn Rsxform::fTX(self : Self) -> Float {
  rsxform_fTX(self.to_bytes())
}

///|
#borrow(bytes)
extern "c" fn rsxform_fTY(bytes : Bytes) -> Float = "moonbit_skia_rsxform_fty"

///|
pub fn Rsxform::fTY(self : Self) -> Float {
  rsxform_fTY(self.to_bytes())
}
