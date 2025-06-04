library(shiny)

# Definición de la interfaz (UI) y del servidor (server)


vars <- setdiff(names(iris), "Species")

ui <- fluidPage(
    headerPanel('k-medias para datos iris'),
    sidebarPanel(
      selectInput('xcol', 'Variable X', vars),
      selectInput('ycol', 'Variable Y', vars, selected = vars[[2]]),
      numericInput('clusters', 'Nº de clusters', 3, min = 1, max = 9)
    ),
    mainPanel(
      plotOutput('graf1')
    )
)

server <- function(input, output, session) {
  
  selectedData <- reactive({
    iris[, c(input$xcol, input$ycol)]
  })
  
  clusters <- reactive({
    kmeans(selectedData(), input$clusters)
  })
  
  output$graf1 <- renderPlot({
    palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
                       "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
                       
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
  })

}

shinyApp(ui = ui, server = server)


