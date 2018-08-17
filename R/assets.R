#' Set scene
#'
#' Set aframe scene.
#'
#' @param ... Any \code{aframer} element.
#'
#' @importFrom htmltools tag
#'
#' @export
a_scene <- function(..., envir = FALSE){

  sc <- tag("a-scene",list(...))

  dep <- htmltools::htmlDependency(
    name = "aframe",
    version = "0.8.0",
    src = system.file("aframe", package = "aframer"),
    script = "aframe.min.js")

  if(isTRUE(envir)){
    env <- htmltools::htmlDependency(
      name = "aframe",
      version = "0.8.0",
      src = system.file("aframe", package = "aframer"),
      script = "aframe-environment-component.min.js")

    dep <- list(dep, env)
  }

  htmltools::attachDependencies(
    sc,
    dep
  )
}

#' Add assets
#'
#' Add assets to your aframe.
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
