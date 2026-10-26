///|
pub(all) suberror SkiaError {
  InvalidPixelBufferSize(width~ : Int32, height~ : Int32)
  InvalidSurfaceSize(width~ : Int32, height~ : Int32)
  TypefaceCreateFailed
  FontCreateFailed
  PathParseSvgFailed
  SurfaceReadPixelsFailed
  SurfaceCreateFailed(width~ : Int32, height~ : Int32)
  WritePngFailed(status~ : Int32)
} derive(Debug, Eq)

///|
pub extend SkiaError with Debug::{to_repr}

///|
pub extend SkiaError with Eq::{not_equal, equal}
