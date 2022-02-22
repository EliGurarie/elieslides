#' Break html slide into columns
#'
#' Use this in a chunk to create handy html code, but remember to have results = "asis"
#'
#' @param side "l" or "r"
#' @param w width of slide, in percent
#'
#' @export


cols <- function(side = "l", w = 50){
    side <- ifelse(side == "l", "left", "right")
    cat(paste0('<div style="float:', side, '; width: ', w, '%;">'))
}

#' Insert image
#'
#' Use this in a chunk to create handy html code, but remember to have results = "asis"
#'
#' @param file relative file location
#' @param w width of image, in percentage
#'
#' @export

pics <- function(file, w=100){
    cat(paste0("<img src='", file, "' width='",w,"%'/>"))
}


#' Establish Elie-style graphic pars
#'
#' I like these:
#' - mar = c(3,3,2,2),
#' - bty = "l",
#' - mgp = c(1.5,.25,0),
#' - tck = 0.01,
#' - cex.lab = 1.2
#'
#' @param ... additional arguments for par.
#' @export


pars <- function(...){
    par(mar = c(3,3,2,2), bty = "l", mgp = c(1.5,.25,0),
        tck = 0.01, cex.lab = 1.2, ...)
}


# Embed Youtube video


vid <- function(video, w = '100%'){
    cat(paste0('<iframe src="https://www.youtube.com/embed/',video,'?controls=0" width = "', w, '"></iframe>'))
}
