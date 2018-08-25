.get_dependency <- function(script, version, cdn){

  if(isTRUE(cdn))
    path <- c(href = paste0("https://aframe.io/releases/", version, "/"))
  else
    path <- c(file = system.file(paste0("aframe/", version), package = "aframer"))

  htmltools::htmlDependency(
    name = "aframe",
    version = version,
    src = path,
    script = script)
}

.avail_versions <- function(){
  c("0.5.0", "0.6.0", "0.7.0", "0.8.0", "0.8.2")
}

.build_html <- function(a){
  dep <- htmltools::findDependencies(a)
  dep <- htmltools::renderDependencies(dep)
  dep <- gsub("^/", "", dep)
  
  scene <- htmltools::renderTags(a)$html
  
  glue::glue(
    "<html>\n",
    "<head>\n",
    "{dep}\n",
    "</head>\n",
    "<body>\n",
    "{scene}\n",
    "</body>\n",
    "</html>\n"
  )
}