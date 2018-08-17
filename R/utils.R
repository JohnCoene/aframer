.get_dependency <- function(script){
  htmltools::htmlDependency(
    name = "aframe",
    version = "0.8.0",
    src = system.file("aframe", package = "aframer"),
    script = script)
}
