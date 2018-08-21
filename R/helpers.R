#' Browse & Embed
#'
#' Browse or embed an aframe.
#'
#' @param a An aframe.
#' @param width,height Dimensions of \code{DOM} containing aframe, must be valid \code{CSS}.
#'
#' @note Keep the \code{width} at \code{100\%} for a responsive visualisation.
#'
#' @rdname view
#' @export
browse_aframe <- function(a){
  htmltools::browsable(a)
}

#' @rdname view
#' @export
embed_aframe <- function(a, width = "100%", height = "400px"){

  style <- glue::glue("width:{width};height:{height};")

  a[[1]] <- htmltools::tagAppendAttributes(a[[1]], style = style, embedded = NA)
  htmltools::div(
    a
  )
}
