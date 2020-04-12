library(shiny)

ui <- fluidPage(
  
  # css ===================================================================
  tags$head(tags$style(HTML('
                          .container-fluid {
                            max-width: 1024px;
                          }
                          #navBar {
                            position: fixed;
                            z-index: 9999;
                            left: 0;
                            top: 0;
                            right: 0;
                            background-color: #3475b4;
                            overflow: hidden;
                            border-bottom: 1px solid #3475b3;
                            -moz-box-shadow:    0px 0px 10px 3px #BBC;
                            -webkit-box-shadow: 0px 0px 10px 3px #BBC;
                            box-shadow:         0px 0px 10px 3px #BBC;
                          }
                          #navBar .title {
                            width: 33.3%;
                            float: left;
                          }
                          #navBar h4 {
                            margin: 0 auto 0 auto;
                            padding: .2em;
                            color: #EEE;
                            text-align: center;
                          }
                          #intro {
                            background-color: #DDD;
                            margin: 26px 0 0 0;
                            padding: .75em;
                            text-align: center;
                            border: 1px solid #CCC;
                            font-size: 18px;
                          }
                          code {
                          color: #333;
                          font-size: 100%;
                          background-color: #f7f7f7;
                          }
                          h3 {
                          margin-top: 0;
                          }
                          h2 {
                          padding-top: 30px;
                          }
'))),
  
  # navigation ====================================================================
  HTML('
    <div id="navBar">
        <div class="title">
            <a href="#projects"><h4>Projects</h4></a>
        </div>

        <div class="title">
            <a href="#tutorials"><h4>Tutorials</h4></a>
        </div>

        <div class="title">
            <a href="http://gl-li.com/" target="_blank"><h4>Blogs</h4></a>
        </div>
    </div>

    <div id="intro">
        <h1>R, Data, and More</h2>
        <h4 style="color:gray;">Welcome to Guanglai Li&#39;s Portfolio</h4>
    </div>
'),
  
  
  # Projects ==========================================================
  h2("Projects", id = "projects"),
  HTML('<hr style="height:1px;border:none;color:#333;background-color:#333;" />'),
  
  
  # .. totalcensus ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("R package development: totalcensus package"),
             href = "https://github.com/GL-Li/totalcensus",
             target = "blank"),
      includeMarkdown("./included_Rmd/totalcensus.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "hierarchy_census_geographic_entities.png", 
               width = "100%"),
      p("Available census geographic entities", align = "center")
    )
  ),
  hr(),
  
  
  # .. ggtiger ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("R package development: ggtiger package"),
             href = "https://github.com/GL-Li/ggtiger",
             target = "blank"),
      includeMarkdown("./included_Rmd/ggtiger.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "congressional_disctrict.png", width = "100%"),
      p("Gerrymandering of congressional districts", align = "center")
    )
  ),
  
  hr(),
  
  
  # Shiny Apps
  #h3("Shiny Apps", id = "shinyApps"),
  
  # .. China census ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("Shiny visualization: China census 2010"),
             href = "https://gl-li.shinyapps.io/China_2010_cencus/",
             target = "blank"),
      includeMarkdown("./included_Rmd/China_census_2010.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "china_2010_census_population.gif", width = "100%"),
      p("Why are the big dips?", align = "center")
    )
  ),
  hr(),
  
  
  # .. clinical notes ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("Predict medical specialties of clinical notes"),
             href = "https://gl-li.shinyapps.io/Clinical_notes/",
             target = "blank"),
      includeMarkdown("./included_Rmd/clinical_notes.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "svm_confusion_matrix.png", width = "100%"),
      p("Confusion matrix of the deployed model", align = "center")
    )
  ),
  hr(),
  
  
  # .. predict next words ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("Predict next words"),
             href = "https://gl-li.shinyapps.io/nextWord_ShinyApp",
             target = "blank"),
      includeMarkdown("./included_Rmd/predict_next_words.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "predict_next_words.gif", width = "100%")
    )
  ),
  hr(),

  #  Tutorials ===================================================================
  h2("Tutorials", id = "tutorials"),
  HTML('<hr style="height:1px;border:none;color:#333;background-color:#333;" />'),
  
  
  # .. ggplot2: minimal examples ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("ggplot2 minimal examples"),
             href = "https://gl-li.github.io/tutorials/ggplot2_review_and_summary.html",
             target = "blank"),
      includeMarkdown("./included_Rmd/ggplot2_minimal_examples.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "ggplot2_minimal_examples.png", width = "100%")
    )
  ),
  hr(),
  
  
  # .. shiny: click on a figure ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("Shiny: click on one figure to get another"),
             href = "https://gl-li.github.io/tutorials/shiny_click_to_get_figure.html",
             target = "blank"),
      includeMarkdown("./included_Rmd/shiny_tutorials_click_figure.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "click_to_get_figure.gif", width = "100%")
    )
  ),
  hr(),
  
  
  # .. shiny: click on a map ====
  fluidRow(
    column(
      width = 7,
      tags$a(h3("Shiny: click on a map"),
             href = "https://gl-li.github.io/tutorials/shiny_click_on_a_map.html",
             target = "blank"),
      includeMarkdown("./included_Rmd/shiny_tutorials_click_map.Rmd")
    ),
    column(
      width = 5,
      tags$img(src = "click_on_map.gif", width = "100%")
    )
  )
  
) # end of fluidPage
