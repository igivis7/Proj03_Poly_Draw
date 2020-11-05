shinyServer(  
  function(input, output, session) {
    observeEvent(input$b_upd, {
      lat_val <- reactive({
        sliderInp <- input$sliderNofPoly
        arr_rnorm <- rnorm(sliderInp)
        norm_arr_rnorm <- arr_rnorm /5 * 180
      })
      lng_val <- reactive({
        sliderInp <- input$sliderNofPoly
        arr_rnorm <- rnorm(sliderInp)
        norm_arr_rnorm <- arr_rnorm /5 * 360
      })
      output$mymap <- renderPlot({ 
        plot(lat_val(), lng_val(), type = "n", xlab="X", ylab="Y")
        polygon(lat_val(), lng_val(), col = "gray", border = "red")
      })
    })
    
    output$mymap <- renderPlot({ plot(1,1, xlab="X", ylab="Y") })
    
    
    
  }
)