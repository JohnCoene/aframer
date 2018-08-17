#' Primitives
#'
#' All aframe primitives.
#'
#' @param ... Any aframe element or named options.
#'
#' @examples
#' x <- a_primitive("box", list(color = "red"))
#' y <- a_box(color = "red")
#'
#' identical(x, y)
#'
#' @seealso \code{\link{a_scene}}
#'
#' @rdname primitives
#' @export
a_primitive <- function(primitive, opts = list()){

  if(missing(primitive))
    stop("missing primitive")

  primitive <- paste0("a-", primitive)

  tag(primitive, opts)
}

#' @rdname primitives
#' @export
a_entity <- function(...){
  a_primitive("entity", list(...))
}

#' @rdname primitives
#' @export
a_box <- function(...){
  a_primitive("box", list(...))
}

#' @rdname primitives
#' @export
a_camera <- function(...){
  a_primitive("camera", list(...))
}

#' @rdname primitives
#' @export
a_circle <- function(...){
  a_primitive("circle", list(...))
}

#' @rdname primitives
#' @export
a_collada_model <- function(...){
  a_primitive("collada-model", list(...))
}

#' @rdname primitives
#' @export
a_cone <- function(...){
  a_primitive("cone", list(...))
}

#' @rdname primitives
#' @export
a_cursor <- function(...){
  a_primitive("cursor", list(...))
}

#' @rdname primitives
#' @export
a_curvedimage <- function(...){
  a_primitive("curvedimage", list(...))
}

#' @rdname primitives
#' @export
a_cylinder <- function(...){
  a_primitive("cylinder", list(...))
}

#' @rdname primitives
#' @export
a_gltf_model <- function(...){
  a_primitive("gltf-model", list(...))
}

#' @rdname primitives
#' @export
a_icosahedron <- function(...){
  a_primitive("icosahedron", list(...))
}

#' @rdname primitives
#' @export
a_image <- function(...){
  a_primitive("image", list(...))
}

#' @rdname primitives
#' @export
a_light <- function(...){
  a_primitive("light", list(...))
}

#' @rdname primitives
#' @export
a_link <- function(...){
  a_primitive("link", list(...))
}

#' @rdname primitives
#' @export
a_obj_model <- function(...){
  a_primitive("obj-model", list(...))
}

#' @rdname primitives
#' @export
a_octahedron <- function(...){
  a_primitive("octahedron", list(...))
}

#' @rdname primitives
#' @export
a_plane <- function(...){
  a_primitive("plane", list(...))
}

#' @rdname primitives
#' @export
a_ring <- function(...){
  a_primitive("ring", list(...))
}

#' @rdname primitives
#' @export
a_ring <- function(...){
  a_primitive("ring", list(...))
}

#' @rdname primitives
#' @export
a_sky <- function(...){
  a_primitive("sky", list(...))
}

#' @rdname primitives
#' @export
a_sound <- function(...){
  a_primitive("sound", list(...))
}

#' @rdname primitives
#' @export
a_sphere <- function(...){
  a_primitive("sphere", list(...))
}

#' @rdname primitives
#' @export
a_tetrahedron <- function(...){
  a_primitive("tetrahedron", list(...))
}

#' @rdname primitives
#' @export
a_text <- function(...){
  a_primitive("text", list(...))
}

#' @rdname primitives
#' @export
a_torus_knot <- function(...){
  a_primitive("torus-knot", list(...))
}

#' @rdname primitives
#' @export
a_torus <- function(...){
  a_primitive("torus", list(...))
}

#' @rdname primitives
#' @export
a_triangle <- function(...){
  a_primitive("triangle", list(...))
}

#' @rdname primitives
#' @export
a_video <- function(...){
  a_primitive("video", list(...))
}

#' @rdname primitives
#' @export
a_videosphere <- function(...){
  a_primitive("videosphere", list(...))
}
