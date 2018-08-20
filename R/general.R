#' Scene
#'
#' Set aframe scene.
#'
#' @param ... Any \code{aframer} element or parameter.
#' @param version Version of aframe to source, see details.
#' @param cdn Set to \code{TRUE} to use the CDN and \code{FALSE} to use local file.
#'
#' @details
#' Available versions:
#' \itemize{
#'   \item{\code{0.5.0}}
#'   \item{\code{0.6.0}}
#'   \item{\code{0.7.0}}
#'   \item{\code{0.8.0}}
#'   \item{\code{0.8.2}}
#' }
#'
#' @importFrom htmltools tag
#'
#' @rdname scene
#' @export
a_scene <- function(..., version = "0.8.2", cdn = FALSE){

  if(!version %in% .avail_versions())
    stop("wrong version number", call. = FALSE)

  sc <- tag("a-scene", list(...))

  dependencies <- list()

  dep <- a_dependency(version, cdn)

  htmltools::tagList(
    sc,
    dep
  )
}

#' @rdname scene
#' @export
a_dependency <- function(version = "0.8.2", cdn = FALSE){
  if(!version %in% .avail_versions())
    stop("wrong version number", call. = FALSE)

  .get_dependency(
    script = "aframe.min.js",
    version = version,
    cdn = cdn
  )
}

#' Animations
#'
#' Add animations.
#'
#' @param ... Any \code{aframer} element.
#'
#' @export
a_animation <- function(...){
  a_primitive("animation", list(...))
}

#' Assets
#'
#' Add assets.
#'
#' @param ... Any \code{aframer} element or parameter.
#'
#' @rdname assets
#' @export
a_assets <- function(...){
  a_primitive("assets",list(...))
}


a_img <- function(...){
  a_primitive("img", list(...))
}

#' @rdname assets
#' @export
a_mixin <- function(...){
  a_primitive("mixin", list(...))
}
