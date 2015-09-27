shinyServer(function(input, output, session) {

  palette(rainbow(9))
  
  df <- reactive({data.frame(iris[, c(input$x, input$y)])})
  
  clusters <- reactive({kmeans(df(), input$k)})
  
  choices <- reactive({if(input$radio != "none"){
    data.frame(iris[iris$Species == input$radio,
                    c(input$x, input$y)
                    ]
               )
      }
    }
  )

  output$plotIt <- renderPlot({
    par(mar = c(4, 5, 0, 1))
    plot(df(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 5, cex = 2, lwd = 4)
#     if (choice != "none"){
    points(x = choices(), pch = 1, cex = 4, lwd = 2, col = "black")
#     }
#    text(c("You selected ", choice))
  
  }
  )
  
}
)