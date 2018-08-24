#' Browse & Embed
#'
#' Browse or embed an aframe.
#'
#' @param a An aframe.
#' @param width,height Dimensions of \code{DOM} containing aframe, must be valid \code{CSS}.
#'
#' @examples
#' browse_aframe(
#'   a_scene(
#'     a_box(
#'       color = "blue",
#'       position = xyz_aframe(0, 1, -5)
#'     )
#'   )
#' )
#'
#' @note Keep the \code{width} at \code{100\%} for a responsive visualisation.
#'
#' @rdname view
#' @export
browse_aframe <- function(a){
  htmltools::html_print(a, viewer = browseURL)
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

#' @rdname view
#' @export
embed_aframe2 <- function(a, width = "100%", height = "400px"){

  style <- glue::glue("width:{width};height:{height};")

  a <- htmltools::tagAppendAttributes(a, style = style, embedded = NA)
  htmltools::div(
    a
  )
}

#' Optionise
#'
#' Easily create options.
#'
#' @param ... Any \code{aframer} argument.
#' @param x,y,z Coordinates.
#' @param vect Vector of coordinates.
#'
#' @examples
#' (opts_aframe(event = "mouseenter", color = "#8FF7FF", boolean = TRUE))
#'
#' coord_vect <- vect_aframe(c(0, 1, 0))
#' (coord_xyz <- xyz_aframe(0, 1, 0))
#'
#' identical(coord_vect, coord_xyz)
#'
#' @rdname options
#' @export
opts_aframe <- function(...){
  l <- list(...)

  # JS boolean
  bool <- function(x){
    if(is.logical(x))
      tolower(as.character(x))
    else
      x
  }

  l <- lapply(l, bool)

  opts <- glue::glue("{names(l)}: {l};")
  glue::glue_collapse(opts)
}

#' @rdname options
#' @export
vect_aframe <- function(vect){
  if(length(vect) != 3)
    warning(paste("vector of length", length(vect)))
  vect <- glue::glue("{vect}")
  glue::glue_collapse(vect, sep = " ")
}

#' @rdname options
#' @export
xyz_aframe <- function(x, y, z){
  vect_aframe(c(x, y, z))
}
