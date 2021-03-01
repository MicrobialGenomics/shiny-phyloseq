


getRDataPaths <- function() {
    cat(file=stderr(),"shiny data path","\n")
    cat(file=stderr(),Sys.getenv("SHINY_DATA_PATH"),"\n")
   
    return (list.files(path=Sys.getenv("SHINY_DATA_PATH"),pattern = "collector.RData|^DADA2_Rsession.RData",full.names=TRUE))
}



getPhyloseqObj <- function(files,env) {
    lapply(files, load, env)
    attach(env)
    all <- mget(ls(envir = env),envir=env)
    return (all[lapply(all, class)=="phyloseq"])

}