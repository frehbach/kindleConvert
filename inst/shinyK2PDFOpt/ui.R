library(shiny)

shinyUI(fluidPage(

    titlePanel("Simple PDF Formatter"),

    sidebarLayout(
        sidebarPanel(
            fileInput('file_input', 'upload file ( . pdf format only)', accept = c('.pdf')),
            numericInput("inPage","Page",value = 1, min = 1),
            numericInput("mLeft","Margin Left, cm", value = 0, min = 0, step = 0.1),
            numericInput("mRight","Margin Right, cm", value = 0, min = 0, step = 0.1),
            numericInput("mTop","Margin Top, cm", value = 0, min = 0, step = 0.1),
            numericInput("mBottom","Margin Bottom, cm", value = 0, min = 0, step = 0.1),
            actionButton("createPreview", "Create Preview"),
            actionButton("createFull", "Create PDF")
        ),

        mainPanel(
            uiOutput("pdfview")
        )
    )
))

