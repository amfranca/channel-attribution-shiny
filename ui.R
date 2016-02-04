library(shiny)

shinyUI(navbarPage("Channel Attribution Model", 
                   
                   
                   tabPanel(
                     "Input",
                   sidebarLayout(
                       sidebarPanel(
                         fileInput('file1', 'Escolha arquivo CSV',
                                   accept=c('text/csv', 
                                            'text/comma-separated-values,text/plain', 
                                            '.csv')),
                         tags$hr(),
                         checkboxInput('header', 'Cabeçalho', TRUE),
                         numericInput('markov_order','Ordem de Markov',min = 1, max = 10, value = 1),
                         radioButtons('sep', 'Separador',
                                      c('Ponto-Vírgula'=';',
                                        'Vírgula'=',',
                                        'Tabulação'='\t'),
                                      ';'),
                         radioButtons('quote', 'Quote',
                                      c('Nenhum'='',
                                        'Aspas Duplas'='"',
                                        'Aspas Simples'="'"),
                                      '"'),
                         downloadButton('downloadData', 'Download')
                         
                         
                         ),
                       mainPanel(
                               tabsetPanel(type = "tabs",
                                           
                                           
                                           tabPanel("Tabela", tableOutput("table")),
                                           tabPanel("Resultado", tableOutput("results")),
                                           tabPanel("Gráficos", plotOutput("plots"))
                                           ),
                               tableOutput('Results')
                              
                               
                                )
                              )
                           )#,
#                    
#                    
#                    tabPanel(
#                      "Output", 
#                     
#                       sidebarLayout(
#                        sidebarPanel(
#                          downloadButton('downloadData', 'Download')
#                        ),
#                        mainPanel(
#                          tableOutput('Results')
#                        )
#                          
#                        )
#                      )
                     
                   )
                   
                   
                   
                   
                   )
                  
  
  
#   fluidPage(
#   
#   # Application title
#   titlePanel("Channel Attribution Model"),
#   
#   
#   sidebarLayout(
#     sidebarPanel(
#       fileInput('file1', 'Escolha arquivo CSV',
#                 accept=c('text/csv', 
#                          'text/comma-separated-values,text/plain', 
#                          '.csv')),
#       tags$hr(),
#       checkboxInput('header', 'Cabeçalho', TRUE),
#       radioButtons('sep', 'Separador',
#                    c('Ponto-Vírgula'=';',
#                      'Vírgula'=',',
#                     'Tabulação'='\t'),
#                    ';'),
#       radioButtons('quote', 'Quote',
#                    c('Nenhum'='',
#                      'Aspas Duplas'='"',
#                      'Aspas Simples'="'"),
#                    '"')
#       
#       
#       
#     ),
#     
#     
#     mainPanel(
#       tabsetPanel(type = "tabs",
#                   
#                   
#                   tabPanel("Tabela", tableOutput("table")),
#                   tabPanel("Resultado", tableOutput("results")),
#                   tabPanel("Gráficos", plotOutput("plots"))
#                   
#       )
#     )
#   )
# ))