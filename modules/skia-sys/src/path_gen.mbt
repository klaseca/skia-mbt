// Generated file. Do not edit by hand.

///|
pub extern "c" fn path_new() -> Path = "moonbit_skia_path_new"

///|
#borrow(arg0)
pub extern "c" fn path_delete(arg0 : Path) = "moonbit_skia_path_delete"

///|
#borrow(cpath)
pub extern "c" fn path_clone(cpath : Path) -> Path = "moonbit_skia_path_clone"

///|
#borrow(arg0, arg1)
extern "c" fn path_get_bounds_ffi(arg0 : Path, arg1 : Bytes) = "moonbit_skia_path_get_bounds_ffi"

///|
pub fn path_get_bounds(arg0 : Path, arg1 : Rect) -> Unit {
  path_get_bounds_ffi(arg0, arg1.to_bytes())
}

///|
#borrow(arg0, arg1)
extern "c" fn path_compute_tight_bounds_ffi(arg0 : Path, arg1 : Bytes) = "moonbit_skia_path_compute_tight_bounds_ffi"

///|
pub fn path_compute_tight_bounds(arg0 : Path, arg1 : Rect) -> Unit {
  path_compute_tight_bounds_ffi(arg0, arg1.to_bytes())
}

///|
#borrow(arg0)
pub extern "c" fn path_get_filltype(arg0 : Path) -> Int = "moonbit_skia_path_get_filltype"

///|
#borrow(arg0)
pub extern "c" fn path_set_filltype(arg0 : Path, arg1 : Int) = "moonbit_skia_path_set_filltype"

///|
#borrow(cpath, cmatrix)
extern "c" fn path_transform_ffi(cpath : Path, cmatrix : Bytes) = "moonbit_skia_path_transform_ffi"

///|
pub fn path_transform(cpath : Path, cmatrix : Matrix) -> Unit {
  path_transform_ffi(cpath, cmatrix.to_bytes())
}

///|
#borrow(cpath, cmatrix, destination)
extern "c" fn path_transform_to_dest_ffi(cpath : Path, cmatrix : Bytes, destination : Path) = "moonbit_skia_path_transform_to_dest_ffi"

///|
pub fn path_transform_to_dest(cpath : Path, cmatrix : Matrix, destination : Path) -> Unit {
  path_transform_to_dest_ffi(cpath, cmatrix.to_bytes(), destination)
}

///|
#borrow(cpath)
pub extern "c" fn path_reset(cpath : Path) = "moonbit_skia_path_reset"

///|
#borrow(cpath)
pub extern "c" fn path_rewind(cpath : Path) = "moonbit_skia_path_rewind"

///|
#borrow(cpath)
pub extern "c" fn path_count_points(cpath : Path) -> Int = "moonbit_skia_path_count_points"

///|
#borrow(cpath)
pub extern "c" fn path_count_verbs(cpath : Path) -> Int = "moonbit_skia_path_count_verbs"

///|
#borrow(cpath, point)
extern "c" fn path_get_point_ffi(cpath : Path, index : Int, point : Bytes) = "moonbit_skia_path_get_point_ffi"

///|
pub fn path_get_point(cpath : Path, index : Int, point : Point) -> Unit {
  path_get_point_ffi(cpath, index, point.to_bytes())
}

///|
#borrow(cpath, points)
extern "c" fn path_get_points_ffi(cpath : Path, points : Bytes, max : Int) -> Int = "moonbit_skia_path_get_points_ffi"

///|
pub fn path_get_points(cpath : Path, points : Point, max : Int) -> Int {
  path_get_points_ffi(cpath, points.to_bytes(), max)
}

///|
#borrow(cpath)
pub extern "c" fn path_contains(cpath : Path, x : Float, y : Float) -> Bool = "moonbit_skia_path_contains"

///|
#borrow(cpath, str)
pub extern "c" fn path_parse_svg_string(cpath : Path, str : Bytes) -> Bool = "moonbit_skia_path_parse_svg_string"

///|
#borrow(cpath)
pub extern "c" fn path_to_svg_string(cpath : Path, str : StringLib) = "moonbit_skia_path_to_svg_string"

///|
#borrow(cpath, point)
extern "c" fn path_get_last_point_ffi(cpath : Path, point : Bytes) -> Bool = "moonbit_skia_path_get_last_point_ffi"

///|
pub fn path_get_last_point(cpath : Path, point : Point) -> Bool {
  path_get_last_point_ffi(cpath, point.to_bytes())
}

///|
#borrow(p0, p1, p2, pts)
extern "c" fn path_convert_conic_to_quads_ffi(p0 : Bytes, p1 : Bytes, p2 : Bytes, w : Float, pts : Bytes, pow2 : Int) -> Int = "moonbit_skia_path_convert_conic_to_quads_ffi"

///|
pub fn path_convert_conic_to_quads(p0 : Point, p1 : Point, p2 : Point, w : Float, pts : Point, pow2 : Int) -> Int {
  path_convert_conic_to_quads_ffi(p0.to_bytes(), p1.to_bytes(), p2.to_bytes(), w, pts.to_bytes(), pow2)
}

///|
#borrow(cpath)
pub extern "c" fn path_get_segment_masks(cpath : Path) -> UInt = "moonbit_skia_path_get_segment_masks"

///|
#borrow(cpath, bounds)
extern "c" fn path_is_oval_ffi(cpath : Path, bounds : Bytes) -> Bool = "moonbit_skia_path_is_oval_ffi"

///|
pub fn path_is_oval(cpath : Path, bounds : Rect) -> Bool {
  path_is_oval_ffi(cpath, bounds.to_bytes())
}

///|
#borrow(cpath)
pub extern "c" fn path_is_rrect(cpath : Path, bounds : Rrect) -> Bool = "moonbit_skia_path_is_rrect"

///|
#borrow(cpath, rect, isClosed, direction)
extern "c" fn path_is_rect_ffi(cpath : Path, rect : Bytes, isClosed : Ref[Bool], direction : Ref[Int]) -> Bool = "moonbit_skia_path_is_rect_ffi"

///|
pub fn path_is_rect(cpath : Path, rect : Rect, isClosed : Ref[Bool], direction : Ref[Int]) -> Bool {
  path_is_rect_ffi(cpath, rect.to_bytes(), isClosed, direction)
}

///|
#borrow(cpath)
pub extern "c" fn path_is_convex(cpath : Path) -> Bool = "moonbit_skia_path_is_convex"

///|
#borrow(cpath)
pub extern "c" fn path_create_iter(cpath : Path, forceClose : Int) -> PathIterator = "moonbit_skia_path_create_iter"

///|
pub extern "c" fn path_iter_conic_weight(iterator : PathIterator) -> Float = "moonbit_skia_path_iter_conic_weight"

///|
pub extern "c" fn path_iter_is_close_line(iterator : PathIterator) -> Int = "moonbit_skia_path_iter_is_close_line"

///|
pub extern "c" fn path_iter_is_closed_contour(iterator : PathIterator) -> Int = "moonbit_skia_path_iter_is_closed_contour"

///|
pub extern "c" fn path_iter_destroy(iterator : PathIterator) = "moonbit_skia_path_iter_destroy"

///|
#borrow(cpath)
pub extern "c" fn path_create_rawiter(cpath : Path) -> PathRawiterator = "moonbit_skia_path_create_rawiter"

///|
pub extern "c" fn path_rawiter_peek(iterator : PathRawiterator) -> Int = "moonbit_skia_path_rawiter_peek"

///|
pub extern "c" fn path_rawiter_conic_weight(iterator : PathRawiterator) -> Float = "moonbit_skia_path_rawiter_conic_weight"

///|
pub extern "c" fn path_rawiter_destroy(iterator : PathRawiterator) = "moonbit_skia_path_rawiter_destroy"

///|
#borrow(one, two, result)
pub extern "c" fn pathop_op(one : Path, two : Path, op : Int, result : Path) -> Bool = "moonbit_skia_pathop_op"

///|
#borrow(path, result)
pub extern "c" fn pathop_simplify(path : Path, result : Path) -> Bool = "moonbit_skia_pathop_simplify"

///|
#borrow(path, result)
extern "c" fn pathop_tight_bounds_ffi(path : Path, result : Bytes) -> Bool = "moonbit_skia_pathop_tight_bounds_ffi"

///|
pub fn pathop_tight_bounds(path : Path, result : Rect) -> Bool {
  pathop_tight_bounds_ffi(path, result.to_bytes())
}

///|
#borrow(path, result)
pub extern "c" fn pathop_as_winding(path : Path, result : Path) -> Bool = "moonbit_skia_pathop_as_winding"

///|
pub extern "c" fn opbuilder_new() -> Opbuilder = "moonbit_skia_opbuilder_new"

///|
pub extern "c" fn opbuilder_destroy(builder : Opbuilder) = "moonbit_skia_opbuilder_destroy"

///|
#borrow(path)
pub extern "c" fn opbuilder_add(builder : Opbuilder, path : Path, op : Int) = "moonbit_skia_opbuilder_add"

///|
#borrow(result)
pub extern "c" fn opbuilder_resolve(builder : Opbuilder, result : Path) -> Bool = "moonbit_skia_opbuilder_resolve"

///|
pub extern "c" fn pathmeasure_new() -> Pathmeasure = "moonbit_skia_pathmeasure_new"

///|
#borrow(path)
pub extern "c" fn pathmeasure_new_with_path(path : Path, forceClosed : Bool, resScale : Float) -> Pathmeasure = "moonbit_skia_pathmeasure_new_with_path"

///|
pub extern "c" fn pathmeasure_destroy(pathMeasure : Pathmeasure) = "moonbit_skia_pathmeasure_destroy"

///|
#borrow(path)
pub extern "c" fn pathmeasure_set_path(pathMeasure : Pathmeasure, path : Path, forceClosed : Bool) = "moonbit_skia_pathmeasure_set_path"

///|
pub extern "c" fn pathmeasure_get_length(pathMeasure : Pathmeasure) -> Float = "moonbit_skia_pathmeasure_get_length"

///|
#borrow(matrix)
extern "c" fn pathmeasure_get_matrix_ffi(pathMeasure : Pathmeasure, distance : Float, matrix : Bytes, flags : Int) -> Bool = "moonbit_skia_pathmeasure_get_matrix_ffi"

///|
pub fn pathmeasure_get_matrix(pathMeasure : Pathmeasure, distance : Float, matrix : Matrix, flags : Int) -> Bool {
  pathmeasure_get_matrix_ffi(pathMeasure, distance, matrix.to_bytes(), flags)
}

///|
pub extern "c" fn pathmeasure_get_segment(pathMeasure : Pathmeasure, start : Float, stop : Float, dst : Pathbuilder, startWithMoveTo : Bool) -> Bool = "moonbit_skia_pathmeasure_get_segment"

///|
pub extern "c" fn pathmeasure_is_closed(pathMeasure : Pathmeasure) -> Bool = "moonbit_skia_pathmeasure_is_closed"

///|
pub extern "c" fn pathmeasure_next_contour(pathMeasure : Pathmeasure) -> Bool = "moonbit_skia_pathmeasure_next_contour"
