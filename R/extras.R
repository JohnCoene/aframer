#' Line
#'
#' Add a line.
#'
#' @inheritParams a_primitive
#' @param start,end Start and end of line.
#'
#' @examples
#' browse_aframe(
#'   a_scene(
#'     a_dep(),
#'     a_line("0, 1, 0", "2 0 -5", color = "blue"),
#'     a_line(" 0 2 0", " 3 0 -4", color = "red")
#'   )
#' )
#'
#' @export
a_line <- function(start, end, ...){
  if(missing(start) || missing(end))
    stop("must pass start and end.", call. = FALSE)

  ln <- opts_aframe(start = start, end = end, ...)

  a_entity(
    line = ln
  )
}
