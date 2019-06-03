library(shiny)

shinyUI(fluidPage(

    titlePanel("Simple PDF Formatter"),

    sidebarLayout(
        sidebarPanel(
            h3("-- 1. --"),
            fileInput('file_input', 'upload file ( . pdf format only)', accept = c('.pdf')),
            hr(),

            h3("-- 2. --"),
            h4("Specify file formatting"),
            numericInput("inPage","Page",value = 1, min = 1),
            numericInput("mLeft","Margin Left, cm", value = 0, min = 0, step = 0.1),
            numericInput("mRight","Margin Right, cm", value = 0, min = 0, step = 0.1),
            numericInput("mTop","Margin Top, cm", value = 0, min = 0, step = 0.1),
            numericInput("mBottom","Margin Bottom, cm", value = 0, min = 0, step = 0.1),

            hr(),
            h3("-- 3. --"),
            h4("Create a Preview, iterate the file formatting until you are happy"),
            actionButton("createPreview", "Create Preview"),
            actionButton("createFull", "Create PDF")
        ),

        mainPanel(
            withSpinner(uiOutput("pdfview"))
        )
    )
))

