///|
#derive(Debug, Eq)
pub(all) suberror SkiaError {
  InvalidPixelBufferSize(width~ : Int32, height~ : Int32)
  InvalidSurfaceSize(width~ : Int32, height~ : Int32)
  TypefaceCreateFailed
  FontCreateFailed
  GlInterfaceCreateFailed
  GlContextCreateFailed
  GlContextAbandoned
  GlSubmitFailed
  D3d12Unavailable
  D3d12ContextCreateFailed
  D3d12ContextAbandoned
  D3d12SubmitFailed
  PathParseSvgFailed
  SurfaceReadPixelsFailed
  SurfaceCreateFailed(width~ : Int32, height~ : Int32)
  WritePngFailed(status~ : Int32)
}

///|
pub extend SkiaError with Debug::{to_repr}

///|
pub extend SkiaError with Eq::{not_equal, equal}
