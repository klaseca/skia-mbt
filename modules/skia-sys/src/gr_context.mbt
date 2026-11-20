///|
/// Direct contexts are recording contexts in Skia's C API. Keep the same
/// unmanaged pointer when calling shared recording-context operations.
pub fn GrDirectContext::as_recording_context(self : Self) -> GrRecordingContext = "%identity"
