///|
pub(all) suberror SkiaError {
  InvalidPixelBufferSize(width~ : Int, height~ : Int)
  InvalidSurfaceSize(width~ : Int, height~ : Int)
  TypefaceCreateFailed
  FontCreateFailed
  PathParseSvgFailed
  SurfaceReadPixelsFailed
  SurfaceCreateFailed(width~ : Int, height~ : Int)
  WritePngFailed(status~ : Int)
} derive(Debug, Eq)
