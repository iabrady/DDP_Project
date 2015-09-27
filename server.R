shinyServer(function(input, output, session) {

  palette(rainbow(9))
  
  df <- reactive({data.frame(iris[, c(input$x, input$y)])})
  
  clusters <- reactive({kmeans(df(), input$k)})
  
  output$plotIt <- renderPlot({
    par(mar = c(4, 5, 0, 1))
    plot(df(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 5, cex = 2, lwd = 4)
  })
  
})