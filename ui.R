shinyUI(fluidPage(
    titlePanel("Draw random Polygons"),
    h3("Created by Igor Isaev on 06-11-2020"),
    h3("Description of the Polygons drawing"),
    h4("What is going on..."),
    "The current simple app draws random polygons." ,br(),
    "The main goal of such a ridiculous app is to test shyny app development and attempt to implement an Update button.",br(),
    h4("How to draw polygons"),
    "1. Initially only a plot with a single point is presented.",br(),
    "2. In order to start drawing a polygon press button", strong("Start Plotting Polygons and Update"),br(),
    "3. The shape of a polygon is created", strong("randomly."),br(),
    "3. The number of polygon vertices is defined by the number of the slider.",br(),
    "4. Moving the slider, the polygon shape will be updated automatically.",br(),
    "5. In order to just update a polygon keeping the same number of vertices, press the button",strong("Start Plotting Polygons and Update"),"again.",br(),
    "6. Have fun!",br(),
    "P.S. Initially polygons were drawn over a map using leaflet, but the shinyapps.io showed an error and the app was not able to run :(",
    
    sidebarLayout(
        
        sidebarPanel(
            h3("Polygons Control Panel"),
            sliderInput("sliderNofPoly", "What number of a polygon vertices should be?", 3, 15, value = 3),
            actionButton("b_upd","Start Plotting Polygons and Update")
        ),
        
        mainPanel(
            plotOutput("mymap"),
        )
    )
)
)