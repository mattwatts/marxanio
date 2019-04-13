output$mainui <- renderUI({
    mainPanel(
        h3("marxanui software download"),
        br(),
        conditionalPanel(condition = "input.showform == '1'",
            HTML("To download this free software, please fill in your details and agree to the conditions set out below."),
            br(),
            conditionalPanel(condition = "input.showhint == '1'",
                br(),
                HTML(paste0("", tags$span(style="color:red", "Enter name, organisation, email")))
            ),
            textInput("name","Your name:"),
            textInput("organisation","Your organisation:"),
            selectInput("country","Your country:",choices=countrycode_data$country.name,selected="Australia"),
            textInput("email","Your email address:"),
            HTML("<a href='http://marxan.net/emaillist' target='_blank'>Subscribe to the Marxan mailing list</a>"),
            #checkboxInput("registerio","Register for the marxan.io web app?",value=FALSE),
            conditionalPanel(condition = "input.showregisterio == '1'",
                HTML("A password reset email will be sent to you. The password reset link will expire in 12 hours."),
                br(),
                br()
            ),
            selectInput("industry","Your industry:",choices=industry_list),
            selectInput("researchinterest","Your research interest:",choices=research_interest_list),
            conditionalPanel(condition = "input.showagree == '1'",
                br(),
                HTML(paste0("", tags$span(style="color:red", "You need to agree")))
            ),            
            HTML("By clicking the submit button you agree to the following terms and conditions:"),
            checkboxInput("informauthors",
                HTML(paste0("I agree to ",
                    "<a href='http://marxan.net/inform' target='_blank'>inform the authors</a>",
                    " of any publications, applications for funding, funding acquired and all other applications associated with this software")),
                value=FALSE,width=generate_screen_width()
            ),
            checkboxInput("acknowledgeip",
                HTML(paste0("I agree to ",
                    "<a href='http://marxan.net/cite' target='_blank'>acknowledge the intellectual property</a>",
                    " of the authors in all published work, applications and dealings with this software")),
                value=FALSE,width=generate_screen_width()
            ),
            br(),
            HTML("I agree:"),
            actionButton('submitUser', 'Submit'),
            br()
        ),
        conditionalPanel(condition = "input.showok == '1'",
            br(),
            h4("Download marxanui"),
            HTML("<a href='http://marxan.io/downloads/marxanui_0.1.2.tar.gz' target='_blank'>marxanui 0.1.2</a>"),
            br(),
            HTML("<a href='http://marxan.io/downloads/marxanui_0.1.tar.gz' target='_blank'>marxanui 0.1</a>"),
            br(),
            br(),
            br(),
            actionButton('registerAnotherUser', 'Register another user'),
            br(),
            br(),
            tableOutput("registertable"),
            br()
        )
  )
})
