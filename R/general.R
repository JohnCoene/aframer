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
#' @examples 
#' scene <- a_scene(
#'   a_dependency(),
#'   a_box(
#'     position = xyz_aframe(0, 1, 0),
#'     color = "blue"
#'   )
#' )
#' 
#' if(interactive())
#'   browse_aframe(scene)
#'
#' @importFrom htmltools tag
#'
#' @rdname scene
#' @export
a_scene <- function(...){
  a_primitive("scene", list(...))
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

#' @rdname scene
#' @export
a_dep <- a_dependency

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

#' @rdname assets
#' @export
a_asset_item <- function(...){
  a_primitive("asset-item",list(...))
}

#' @rdname assets
#' @export
a_mixin <- function(...){
  a_primitive("mixin", list(...))
}
