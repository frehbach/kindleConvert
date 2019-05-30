
library(shiny)

shinyServer(function(input, output) {

    observeEvent(input$createPreview,{
        req(input$file_input)

        file.copy(input$file_input$datapath,"www", overwrite = T)
        cmd <- paste("./k2pdfopt www/0.pdf -w 1200 -h 1584 -dpi 300 -om 0.1 -fc- -p",
                     input$inPage,"-ui- -x",
                     "-ml", paste0(input$mLeft,"cm"),
                     "-mr", paste0(input$mRight,"cm"),
                     "-mt", paste0(input$mTop,"cm"),
                     "-mb", paste0(input$mBottom,"cm"))
        system(cmd)

        output$pdfview <- renderUI({
            tags$iframe(style="height:600px; width:100%", src="0_k2opt.pdf")
        })
    })

    observeEvent(input$createFull,{
        req(input$file_input)

        file.copy(input$file_input$datapath,"www", overwrite = T)
        cmd <- paste("./k2pdfopt www/0.pdf -w 1200 -h 1584 -dpi 300 -om 0.1 -fc- -ui- -x",
                     "-ml", paste0(input$mLeft,"cm"),
                     "-mr", paste0(input$mRight,"cm"),
                     "-mt", paste0(input$mTop,"cm"),
                     "-mb", paste0(input$mBottom,"cm"))
        system(cmd)

        output$pdfview <- renderUI({
            tags$iframe(style="height:600px; width:100%", src="0_k2opt.pdf")
        })

    })

})
