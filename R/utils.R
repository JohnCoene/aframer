.get_dependency <- function(script, path, version){
  htmltools::htmlDependency(
    name = "aframe",
    version = version,
    src = system.file(path, package = "aframer"),
    script = script)
}

.avail_versions <- function(){
  c("0.5.0", "0.6.0", "0.7.0", "0.8.0", "0.8.2")
}
