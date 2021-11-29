library(shiny)
library(shinyjs)
shinyUI(navbarPage('scRNA-tool',
                   useShinyjs(),
                   tags$head(
                     #tags$style(HTML(
                     #  " .button {background-color: #1e98d7;width: 116px; } "
                     #))),
                     tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
                     tags$link(rel = "stylesheet", type = "text/css", href = "bu.css")),
                   tabPanel('upload dataset',
                            fluidRow(
                              column(
                                actionButton('GO TO GATING','GO TO GATING',class = 'button'),
                                actionButton('FINE-TUNE','FINE-TUNE',class = 'button'),
                                actionButton('SUB-CLUSTERING','SUB-CLUSTERING',class = 'button'),
                                width=11)
                            )
                   ),
                   tabPanel('pre-treatment',
                            fluidRow(
                              column(
                                actionButton('GO TO GATING','GO TO GATING',class = 'button'),
                                actionButton('FINE-TUNE','FINE-TUNE',class = 'button'),
                                actionButton('SUB-CLUSTERING','SUB-CLUSTERING',class = 'button'),
                                width=11)
                            )
                   ),
                   tabPanel('dimension reduction',
                            fluidRow(
                              column(
                                actionButton('GO TO GATING','GO TO GATING',class = 'button'),
                                actionButton('FINE-TUNE','FINE-TUNE',class = 'button'),
                                actionButton('SUB-CLUSTERING','SUB-CLUSTERING',class = 'button'),
                                width=11)
                            )
                   ),
                   tabPanel('cluster',
                            fluidRow(
                              column(
                                actionButton('GO','GO TO GATING',class = 'button'),
                                actionButton('FINE-TUNE','FINE-TUNE',class = 'button'),
                                actionButton('SUB-CLUSTERING','SUB-CLUSTERING',class = 'button'),
                                width=12)
                            ),
                            fluidRow(
                              #
                              column(
                                width=7,
                                fluidRow(
                                  column(
                                    width = 7,
                                    h1("CLUSTERING")
                                  )
                                  
                                ),
                                fluidRow(
                                  column(
                                    width = 7,
                                    img(src="u1.png",width="743px",height="693px")
                                  )
                                  
                                )
                                
                              ),
                              #
                              column(
                                width=5,
                                fluidRow(
                                  fileInput('input','upl')
                                ),
                                fluidRow(
                                  h1("Annotation")
                                ),
                                fluidRow(
                                  includeHTML('./www/tree.html')     #treeview
                                )
                                
                              )
                              
                            )
                   ),
                   tabPanel('dimension reduction',
                            fluidRow(
                              column(
                                actionButton('GO TO GATING','GO TO GATING',class = 'button'),
                                actionButton('FINE-TUNE','FINE-TUNE',class = 'button'),
                                actionButton('SUB-CLUSTERING','SUB-CLUSTERING',class = 'button'),
                                width=11)
                            )
                   )
)
)

