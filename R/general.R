#' Scene
#'
#' Set aframe scene.
#'
#' @param ... Any \code{aframer} element.
#' @parm anim Set to \code{TRUE} to source
#' \href{https://github.com/ngokevin/kframe/tree/master/components/animation/}{aframe-animation-component}.
#'
#' @importFrom htmltools tag
#'
#' @export
a_scene <- function(..., envir = FALSE, anim = FALSE){

  sc <- tag("a-scene", list(...))

  dependencies <- list()

  dep <- .get_dependency(script = "aframe.min.js")

  dependencies <- htmltools::tagList(dependencies, dep)

  if(isTRUE(envir)){
    env <- .get_dependency(script = "aframe-environment-component.min.js")

    dependencies <- htmltools::tagAppendChild(dependencies, env)
  }

  if(isTRUE(anim)){
    animations <- .get_dependency(script = "aframe-animation-component.min.js")

    dependencies <- htmltools::tagAppendChild(dependencies, animations)
  }

  htmltools::tagList(
    sc,
    dependencies
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
  tag("a-animation", list(...))
}

#' Assets
#'
#' Add assets.
#'
#' @param id,src Id and Source of asset.
#' @param ... Any other parameter.
#'
#' @rdname assets
#' @export
a_assets <- function(...){
  tag("a-assets",list(...))
}

#' @rdname assets
#' @export
a_img <- function(id = NULL, src = NULL, ...){
  tag(
    "a-img",
    list(
      src = src,
      id = id,
      ...
    )
  )
}
