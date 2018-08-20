#' Scene
#'
#' Set aframe scene.
#'
#' @param ... Any \code{aframer} element or parameter.
#' @param version Version of aframe to source, see details.
#' @param envir Set to \code{TRUE} to source \href{https://github.com/feiss/aframe-environment-component/}{aframe-environment-component}.
#' @param anim Set to \code{TRUE} to source \href{https://github.com/ngokevin/kframe/tree/master/components/animation/}{aframe-animation-component}.
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
a_scene <- function(..., version = "0.8.2", envir = FALSE, anim = FALSE){

  if(!version %in% .avail_versions())
    stop("wrong version number", call. = FALSE)

  sc <- tag("a-scene", list(...))

  dependencies <- list()

  dep <- a_dependency(version)

  dependencies <- htmltools::tagList(dependencies, dep)

  if(isTRUE(envir)){
    env <- .get_dependency(
      script = "aframe-environment-component.min.js",
      "aframe/components",
      version
    )

    dependencies <- htmltools::tagAppendChild(dependencies, env)
  }

  if(isTRUE(anim)){
    animations <- .get_dependency(
      script = "aframe-animation-component.min.js",
      "aframe/components",
      version
    )

    dependencies <- htmltools::tagAppendChild(dependencies, animations)
  }

  htmltools::tagList(
    sc,
    dependencies
  )
}

#' @rdname scene
#' @export
a_dependency <- function(version = "0.8.2"){
  if(!version %in% .avail_versions())
    stop("wrong version number", call. = FALSE)

  .get_dependency(
    script = "aframe.min.js",
    path = paste0("aframe/", version),
    version = version
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
