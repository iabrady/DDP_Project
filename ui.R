library(shiny)
library(datasets)
shinyUI(
  pageWithSidebar (
    # Application title
    headerPanel ("Fun With iris"),
    
    sidebarPanel (
      h5("This shiny app plays a little with the Edgar Anderson Iris database."),
      h5("Pick two variables to cluster on, and then the number of clusters."),
      h5("This app will run kmeans on your input."),
      selectInput('x',
                  'X Variable',
                  names(iris)[names(iris)!="Species"],
                  selected=names(iris)[1]),
      selectInput('y',
                  'Y Variable',
                  names(iris)[names(iris)!="Species"],
                  selected=names(iris)[2]),
      numericInput('k',
                   '# of Clusters (1 - 9)',
                   3,
                   min = 1,
                   max = 9),
      h5("Each cluster is shown in a different color, and the cluster centers 
         are shown with the black diamonds.")
    ),
    mainPanel(
      plotOutput('plotIt')
    )
  )
)