#' Attach dependency
#'
#' Attach aframe dependency.
#'
#' @param envir Set to \code{TRUE} to source
#' \href{https://github.com/feiss/aframe-environment-component}{environment components}.
#'
#' @export
attach_aframe <- function(..., envir = FALSE){

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

    htmltools::tagList(..., dep, env)
  } else {
    htmltools::tagList(..., dep)
  }

}
