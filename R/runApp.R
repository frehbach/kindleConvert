
runConverter <- function() {
    appDir <- system.file("shinyK2PDFOpt", package = "shinyK2PDFOpt")
    if (appDir == "") {
        stop("Could not find example directory. Try re-installing `shinyK2PDFOpt`.", call. = FALSE)
    }

    shiny::runApp(appDir, display.mode = "normal")
}

downloadConverter <- function(){
    print("Please download the converter via this webpage:")
    webPage <- "https://www.willus.com/k2pdfopt/download/"
    browseURL(webPage)

    packageDir <- paste0(system.file("",package = "shinyK2PDFOpt"), "k2pdfopt")

    userReply <- readline(prompt="For this app to work, k2pdfopt will now be moved to the shinyApp folder. Please agree (y/n): ")

    if(userReply == "y"){
        if(file.exists("~/Downloads/k2pdfopt")){
            file.copy("~/Downloads/k2pdfopt", packageDir)
        }else{
            error("k2pdfopt was not found in Download dir!")
        }
    }else{
        error("User has to accept in order to proceed")
    }
}
