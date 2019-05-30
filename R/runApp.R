
runConverter <- function() {
    appDir <- system.file("shinyK2PDFOpt", package = "shinyK2PDFOpt")
    if (appDir == "") {
        stop("Could not find example directory. Try re-installing `shinyK2PDFOpt`.", call. = FALSE)
    }

    shiny::runApp(appDir, display.mode = "normal")
}
