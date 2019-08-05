# RxODE WB-PBPK module 2019 Global health fellow program
# Author: Mahmoud, T Abdelwahab, Matthew Fidler, Mirjam N. Trame.

#https://orcid.org/0000-0002-2134-8749




##Package:RxPBPK

# system("Rscript ./params_parse_func.R",show.output.on.console=FALSE)
# system("Rscript ./COMPILED_RxODE_CFZ.R",show.output.on.console=FALSE)
# 
source("./params_parse_func.R")
source("./COMPILED_RxODE_CFZ.R")
human_params = c("P_10"
                 , "P_1368"
                 , "P_28"
                 , "P_3029"
                 )

human_parms_names = c("Age [years]"
                      , "Body Weight [Kg]"
                      , "Height [m]"
                      , "BMI [kg/m2]")



# hard coded params names
compound_params <- c("P_1251"
                     , "P_1257"
                     , "P_1258"
                     , "P_1259"
                     , "P_1263"
                     , "P_2379"
                     , "P_1380"
                     , "P_1856" 
                     , "P_1379"
                     , "P_2378"
                     , "P_2765"
                     , "P_2404")


compound_names <- c ("Molecular weight [g/mol]"
                     , "LogP value"
                     , "Unbound fraction"
                     , "Solubility "
                     , "Specific intestinal permeability (transcellular)"
                     , "Calculated specific intestinal permeability (transcellular)"
                     , "Total Hepatic Clearance Plasma clearance"
                     , "Total Hepatic Clearance-internal Specific clearance"
                     , "Experiment Plasma concentration ratio"
                     , "Calculated Blood/Plasma concentration ratio"
                     , "Partition coefficient (blood cells/plasma unbound)"
                     , "Permeability")


kp <- c("P_3294"
        , "P_3295"
        , "P_3296"
        , "P_3297"
        , "P_3298"
        , "P_3299"
        , "P_3300"
        , "P_3301"
        , "P_3302"
        , "P_3303"
        , "P_3304"
        , "P_3305"
        , "P_3306"
        , "P_3307"
        , "P_3308"
        , "P_3309")
kp_names <- c("Bone (intracellular/plasma)"
              , "Brain (intracellular/plasma)"
              , "Fat (intracellular/plasma)"
              , "Gonads (intracellular/plasma)"
              , "Heart (intracellular/plasma)"
              , "Kidney (intracellular/plasma)"
              , "Stomach (intracellular/plasma)"
              , "Small Intestine (intracellular/plasma)"
              , "Large Intestine (intracellular/plasma)"
              , "Liver Periportal (intracellular/plasma)"
              , "Liver Pericentral (intracellular/plasma)"
              , "Lung (intracellular/plasma)"
              , "Muscle (intracellular/plasma)"
              , "Pancreas (intracellular/plasma)"
              , "Skin (intracellular/plasma)"
              , "Spleen (intracellular/plasma)")

selected_CMT <- c("CONC_PLASMA" # sim_1|Organism|VenousBlood|Plasma|Clofazimine|Concentration
                  , "P_2635" # sim_1|Organism|Liver|Pericentral|Plasma|Clofazimine|Concentration
                  , "P_3066" #Small intestine plasma
                  , "P_3081" #large intestine plasma
                  , "P_1865" # sim_1|Organism|ArterialBlood|Plasma|Clofazimine|Concentration
                  , "P_1872" # sim_1|Organism|Bone|Plasma|Clofazimine|Concentration
                  , "P_1882" # sim_1|Organism|Brain|Plasma|Clofazimine|Concentration
                  , "P_1892" # sim_1|Organism|Fat|Plasma|Clofazimine|Concentration
                  , "P_1902" # sim_1|Organism|Gonads|Plasma|Clofazimine|Concentration
                  , "P_1912" # sim_1|Organism|Heart|Plasma|Clofazimine|Concentration
                  , "P_1923" # sim_1|Organism|Kidney|Plasma|Clofazimine|Concentration
                  , "P_2062" # sim_1|Organism|Stomach|Plasma|Clofazimine|Concentration
                  , "P_2116" # sim_1|Organism|Lung|Plasma|Clofazimine|Concentration
                  , "P_2126" # sim_1|Organism|Muscle|Plasma|Clofazimine|Concentration
                  , "P_2136" # sim_1|Organism|Pancreas|Plasma|Clofazimine|Concentration
                  , "P_2161"# sim_1|Organism|Spleen|Plasma|Clofazimine|Concentration
                  )

names_CMT <- c("Veins Plasma Concentration" = "CONC_PLASMA"
               , "Liver Pericentral Plasma Concentration" = "P_2635"
               , "Small intestine plasma Concentration" = "P_3066"
               , "Large intestine plasma Concentration" = "P_3081"
               , "Artries Plasma Concentration" = "P_1865"
               , "Bone Plasma Concentration" = "P_1872"
               , "Brain Plasma Concentration" = "P_1882"
               , "Fat Plasma Concentration" = "P_1892"
               , "Gonads Plasma Concentration" = "P_1902"
               , "Heart Plasma Concentration"  = "P_1912"
               , "Kidney Plasma Concentration" = "P_1923"
               , "Stomach Plasma Concentration" = "P_2062"
               , "Lung Plasma Concentration" = "P_2116"
               , "Muscle Plasma Concentration" = "P_2126"
               , "Pancreas Plasma Concentration" = "P_2136"
               , "Spleen Plasma Concentration" = "P_2161"
               ###
               
               , "Liver Pericentral Intracellular Concentration" = "P_2962"
               , "Small intestine Intracellular Concentration" = "P_3072"
               , "Large intestine Intracellular Concentration" = "P_3087"
               , "Bone Intracellular Concentration" = "P_2462"
               , "Brain Intracellular Concentration" = "P_2464"
               , "Fat Intracellular Concentration" = "P_2466"
               , "Gonads Intracellular Concentration" = "P_2468"
               , "Heart Intracellular Concentration"  = "P_2470"
               , "Kidney Intracellular Concentration" = "P_2473"
               , "Stomach Intracellular Concentration" = "P_2539"
               , "Lung Intracellular Concentration" = "P_2643"
               , "Muscle Intracellular Concentration" = "P_2645"
               , "Pancreas Intracellular Concentration" = "P_2647"
               , "Spleen Intracellular Concentration" = "P_2652"
               ###
               , "Veins BloodCells Concentration" = "P_1863"
               , "Liver Pericentral BloodCells Concentration" = "P_2637"
               , "Small intestine BloodCells Concentration" = "P_3068"
               , "Large intestine BloodCells Concentration" = "P_3083"
               , "Artries BloodCells Concentration" = "P_1868"
               , "Bone BloodCells Concentration" = "P_1875"
               , "Brain BloodCells Concentration" = "P_1885"
               , "Fat BloodCells Concentration" = "P_1895"
               , "Gonads BloodCells Concentration" = "P_1905"
               , "Heart BloodCells Concentration"  = "P_1915"
               , "Kidney BloodCells Concentration" = "P_1926"
               , "Stomach BloodCells Concentration" = "P_2065"
               , "Lung BloodCells Concentration" = "P_2119"
               , "Muscle BloodCells Concentration" = "P_2129"
               , "Pancreas BloodCells Concentration" = "P_2139"
               , "Spleen BloodCells Concentration" = "P_2164"
               ####
               , "Liver Pericentral Interstitial Concentration" = "P_2639"
               , "Small intestine Interstitial Concentration" = "P_3071"
               , "Large intestine Interstitial Concentration" = "P_3086"
               , "Bone Interstitial Concentration" = "P_1877"
               , "Brain Interstitial Concentration" = "P_1887"
               , "Fat Interstitial Concentration" = "P_1897"
               , "Gonads Interstitial Concentration" = "P_1907"
               , "Heart Interstitial Concentration"  = "P_1917"
               , "Kidney Interstitial Concentration" = "P_1928"
               , "Stomach Interstitial Concentration" = "P_2067"
               , "Lung Interstitial Concentration" = "P_2121"
               , "Muscle Interstitial Concentration" = "P_2131"
               , "Pancreas Interstitial Concentration" = "P_2141"
               , "Spleen Interstitial Concentration" = "P_2166"
               )

###
organ_list <- data.frame(
  val = c("Brain"
          ,"Heart"
          , "Liver"
          , "Kidney"
          , "Small intestine"
          , "Large intestine"
          , "Bone"
          , "Stomach"
          , "Lung"
          , "Muscle"
          , "Pancreas"
          , "Spleen"
          , "Artries"
          , "Veins"
          , "Gonads"
          , "Fat"
           )
  )

organ_list$img = c(
  sprintf("<img src= 'https://i.pinimg.com/originals/a9/bb/59/a9bb59a0bf9fd472097c50d30c028086.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[1]),
  sprintf("<img src='https://cdn3.vectorstock.com/i/thumbs/18/82/human-heart-icon-cartoon-style-vector-9381882.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[2]),
  sprintf("<img src='https://cdn4.iconfinder.com/data/icons/medical-flat-1-1/180/Liver-512.png' width=30px><div class='jhr'>%s</div></img>", organ_list$val[3]),
  sprintf("<img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5905NVSEZlVVZT3k6Z6mQyIFjnBfqvUxRbryoMvjL5jIqO4EA' width=30px><div class='jhr'>%s</div></img>", organ_list$val[4]),
   
  sprintf("<img src='https://cdn3.vectorstock.com/i/thumbs/35/67/small-intestine-icon-vector-7783567.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[5]),
  sprintf("<img src='https://cdn3.vectorstock.com/i/thumbs/29/12/human-large-intestine-icon-cartoon-style-vector-17122912.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[6]),
  sprintf("<img src='https://cdn4.vectorstock.com/i/thumbs/81/28/knee-joint-sign-icon-bone-knee-health-human-vector-20268128.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[7]),
  sprintf("<img src='https://cdn2.vectorstock.com/i/thumbs/36/21/human-stomach-icon-vector-7783621.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[8]),
    
  sprintf("<img src='https://cdn3.vectorstock.com/i/thumbs/51/07/human-organ-icon-vector-14025107.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[9]),
  sprintf("<img src='https://www.renderhub.com/dcbittorf/muscles-of-the-human-arm/muscles-of-the-human-arm-01.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[10]),
  sprintf("<img src='https://cdn2.vectorstock.com/i/thumbs/57/06/pancreas-isometric-3d-icon-vector-7395706.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[11]),
  sprintf("<img src='https://cdn4.vectorstock.com/i/thumbs/57/08/human-spleen-isometric-3d-icon-vector-7395708.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[12]),
  
  sprintf("<img src='https://cdn3.vectorstock.com/i/thumbs/79/72/artery-icon-icon-cartoon-vector-13847972.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[13]),
  sprintf("<img src='https://cdn1.vectorstock.com/i/thumbs/53/90/human-vessel-blue-symbol-icon-design-vector-24005390.jpg' width=30px><div class='jhr'>%s</div></img>", organ_list$val[14]),
  sprintf("<img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxhoQjI6O846IV6mrzTuhvyxxg9tULZjbNVOHyF1pDdUiu4wBf' width=30px><div class='jhr'>%s</div></img>", organ_list$val[15]),
  sprintf("<img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxhoQjI6O846IV6mrzTuhvyxxg9tULZjbNVOHyF1pDdUiu4wBf' width=30px><div class='jhr'>%s</div></img>", organ_list$val[16])
  )


ui <- shinydashboard::dashboardPage(
  shinydashboard::dashboardHeader(title="RxODE WB-PBPK Shiny dashboard"),
  shinydashboard::dashboardSidebar(shinydashboard::sidebarMenu(
    shinydashboard::menuItem("Simulation",tabName = "Simulation"),
    shinydashboard::menuItem("Parameters",startExpanded = TRUE
                             , shinydashboard::menuSubItem("Compound",tabName = "compound")
                             , shinydashboard::menuSubItem("Partition coefficients",tabName = "kp")
                             , shinydashboard::menuItem("Organism",startExpanded = TRUE
                                                        , shinydashboard::menuSubItem("Human",tabName = "hm"))
             )))
  , shinydashboard::dashboardBody(
    shinydashboard::tabItems(
      shinydashboard::tabItem("Simulation"
                              , shiny::fluidRow(
                                shiny::column(2
                                              , shiny::actionButton("goButton", "Simulate", align='right')
                                              , shiny::actionButton("goPlot", "Update Plots", align='right')
                                              , shiny::checkboxInput("goLogy", "Log y")
                                              , shiny::hr()
                                              , shiny::h4('Time sampling')
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('tmin', 'Start', width=60, value = 0))
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('tmax', 'End' , width=60, value = 100))
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('step', 'Step' , width=60, value = 1))
                                              , shiny::hr()
                                              , shiny::h4('Dosing')
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('dose', 'Amount [mg]', width=60, value=1))
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('rate', 'Rate [per hour]' , width=60))
                                              , shiny::br()
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('start'   , 'Start', width=60, value = 0))
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('ndoses' ,  'Repeat', width=60, value = 1))
                                              , shiny::tags$div(style="display: inline-block;",shiny::textInput('interval', 'Interval', width=60, value = 0))
                                              ,shiny::uiOutput("cmts")
                                              ),shiny::column(10
                                                       , shiny::tags$head(shiny::tags$style(".jhr{ display: inline;vertical-align: middle; padding-left: 10px;}"))
                                                       , shinyWidgets::pickerInput(inputId = "Id0109", label = "Choose Organ:", choices = organ_list$val,choicesOpt = list(content = organ_list$img))
                                                       , shiny::uiOutput("organs")
                                                       , shiny::h4('Plots',align="center")
                                                       , shiny::plotOutput("plotTabs")
                                                       , shiny::radioButtons(inputId = "report",label = "Save your file as:",choices = list("pdf","png"))
                                                       , shiny::downloadButton("export")
                                                       )
                                )
                              )
      , shinydashboard::tabItem("compound"
                                , shiny::actionButton("compound_params", "Update", align='right')
                                , shiny::fluidRow(shiny::column(12
                                                         , shiny::uiOutput("compound_params")
                                                         )))
      , shinydashboard::tabItem("kp"
                                , shiny::actionButton("kp_params", "Update", align='right')
                                , shiny::fluidRow(
                                  shiny::column(12
                                                , shiny::uiOutput("KP")
                                                )))
      , shinydashboard::tabItem("hm", shiny::fluidRow(shiny::column(12
                                                               ,shiny::uiOutput("hm")
                                                             )))
      )))

# Server----
server <- function(input, output){
  values <- shiny::reactiveValues()
  m1 <- NULL
  values$res = NULL 
  values$msg = 'NULL'
  values$logy = TRUE
 values$params_value = NULL
  shiny::observeEvent(input$goButton
                      , {
                        values$m1 = NULL
                        values$res <- NULL
                        values$m1 <- CFZ_PBPK_v_3
                        values$cmts = rxState(values$m1)
                        values$params_names = names(parse_params())
                        values$params_value = parse_params()
                        #temp =  
                        }
                      )

##Output plots------     
  
output$organs <- shiny::renderUI({
  if(stringr::str_detect("Veins|Artries",input$Id0109)){
    shiny::checkboxGroupInput( inputId = "Id047", label = "", choices = c( "Plasma"
                                                                      , "Bloodcells"),selected = "Plasma",inline = TRUE)
    }
  else{
    shiny::checkboxGroupInput(inputId = "Id047",label = "", choices = c("Intracellular"
                                                                      , "Interstitial"
                                                                      , "Plasma"
                                                                      , "Bloodcells"),selected = "Plasma",inline = TRUE)
    }
  })
##define it as reactive so can be called within download handler
  plotsInput = shiny::reactive({
    if (is.null(values$res) | is.null(input$Id047))
      return()
    dat = values$res 
    #By default we will hhave bsic ggplot object and we overlay over based on user choice
    p <- ggplot2::ggplot(as.data.frame(dat)) + ggplot2::ylab("")+ ggplot2::xlab("Time")
    #Subsetting organ chocie based on value chosen.
    cmts_1 =colnames(values$res)[-1][colnames(values$res)[-1] %in% ( cmtChoice())]
  
    if ("Plasma" %in% input$Id047  ){
  cmts =cmts_1[cmts_1 %in% names_CMT[grepl(paste0("(?i)","plasma"),names(names_CMT))]]
  
    for(i in 1:length(cmts)){
    ggplot2::theme_set(ggplot2::theme_bw()) # white background
    ggplot2::theme_update(panel.grid.minor=ggplot2::element_blank()) # supress minor grids
    ggplot2::theme_update(legend.background = ggplot2::element_rect(colour='black', linetype='solid', size=0.3, fill='white')
                          , axis.text = ggplot2::element_text(size = 20)
                          , axis.title = ggplot2::element_text(size=20)
                          , legend.text =  ggplot2::element_text(size=20) # settings for legend background
                          , legend.position = "bottom"
                          #, legend.background = ggplot2::element_rect(color = "black", size = 1)
                          , legend.direction = "horizontal") 
    
    p <- p + ggplot2::geom_line( ggplot2::aes_(x=as.name("time"), y=as.name(cmts[i]),col="Plasma"),size=1.5) + ggplot2::labs(color='')   
   
    }
  }
  
    if ("Bloodcells" %in% input$Id047  ) {
      cmts =cmts_1[cmts_1 %in% names_CMT[grepl(paste0("(?i)","bloodcells"),names(names_CMT))]]
       for(i in 1:length(cmts)){
    
    p <-  p + ggplot2::geom_line( ggplot2::aes_(x=as.name("time"), y=as.name(cmts[i]),col="Blood cells"),size=1.5)
   
       }
      
    }
    
  if ("Intracellular" %in% input$Id047  ) {
      cmts =cmts_1[cmts_1 %in% names_CMT[grepl(paste0("(?i)","Intracellular"),names(names_CMT))]]
       for(i in 1:length(cmts)){
    
    tmp <- tolower(cmts[i])
    p <-  p + geom_line( ggplot2::aes_(x=as.name("time"), y=as.name(cmts[i]),col="Intracellular"),size=1.5)
   
       }
      
  }
  if ("Interstitial" %in% input$Id047  ) {
      cmts =cmts_1[cmts_1 %in% names_CMT[grepl(paste0("(?i)","Interstitial"),names(names_CMT))]]
       for(i in 1:length(cmts)){
    
    tmp <- tolower(cmts[i])
    p <-  p + ggplot2::geom_line( ggplot2::aes_(x=as.name("time"), y=as.name(cmts[i]),col="Interstitial"),size=1.5)
    
       }
      
  }
  if (values$logy){
    p <- p + ggplot2::scale_y_log10(breaks=c(0.00001,0.0001,0.001, 0.01,0.1, 1, 10,100)) 
    }
 
   print(p)
})
  
output$plotTabs <- shiny::renderPlot({
  if (is.null(values$res) | is.null(input$Id047)) return()
     print(plotsInput())
     })
  
#Download Handler
output$export <- shiny::downloadHandler(
    filename = function() {paste("Plot_",input$Id0109,gsub(", ",".",toString(input$Id047)), input$report, sep = ".")}
    ,content = function(file){
      if(input$report == "pdf") pdf(file)
      else png(file)
      print(plotsInput())
      dev.off()
      }
  )
  
output$compound_params <- shiny::renderUI({
  if (is.null(values$params_value) ) return()
  lapply(1:length(compound_names), function(i) {
    shiny::textInput(label=compound_names[i], inputId= compound_params[i], value= signif(values$params_value[values$params_names==compound_params[i]],3),width= 350)
      
    })
  })
  
#Partition coefficients----
output$KP <- shiny::renderUI({
  if (is.null(values$params_value) ) return()
  lapply(1:length(kp_names), function(i) {
    shiny::textInput(label=kp_names[i], inputId= kp[i], value= signif(values$params_value[values$params_names==kp[i]],3),width= 350)
    })
  })

 output$hm <- shiny::renderUI({
  if (is.null(values$params_value) ) return()
  lapply(1:length(human_parms_names), function(i) {
    shiny::textInput(label=human_parms_names[i], inputId= human_params[i], value= signif(values$params_value[values$params_names==human_params[i]],3),width= 350)
    })
  })


 shiny::observeEvent(input$goLogy, {
                   values$logy <- !(values$logy);
                   values$msg <- capture.output(
                       tryCatch({
                           solveODE()
                       }, error = function(e) return(e))
                   )
               })

 reactive_buttons <- reactive({
   paste(input$goPlot, input$compound_params, input$kp_params)
   })
 
shiny::observeEvent(reactive_buttons()
                    ,{values$msg <- capture.output(
                      tryCatch({
                           solveODE()
                       }, error = function(e) return(e))
                      )
                    })
#Solve ODE function----

solveODE <- function(){
          values$res <- NULL
            if (is.null(values$m1))
                return()

            stime = as.numeric(input$tmin)
            etime = as.numeric(input$tmax)
            tstep = as.numeric(input$step)
            dose  = as.numeric(input$dose)
            rate  = as.numeric(input$rate)

            if(is.na(rate)){rate <- NULL}
            if(is.na(dose)){dose=0}

            ndoses   = as.numeric(input$ndoses)
            start    = as.numeric(input$start)
            interval = as.numeric(input$interval)

            into = 1 #ifelse(is.null(input$into),1,match(input$into, values$cmts))

            ev <- eventTable() %>%
                add.sampling(seq(stime, etime, tstep )) %>%
                add.dosing(dose = dose, start.time=start,
                           nbr.doses= ndoses, rate=rate,
                           dosing.interval = interval,
                           dosing.to = into)
            cmts = values$cmts

            inits <- NULL
            if(length(cmts)>0){
                init_str=paste0(cmts, '=as.numeric(input$',cmts,')')
                init_str = paste('c(',toString(init_str),')')
                inits <- eval(parse(text=init_str))
            }

            param_str   =   values$params_names #params names
            param_str_1 =    paste0(param_str,'=as.numeric(input$',param_str,')')
            param_str_2 = paste('c(',toString(param_str_1),')')
            params_eval <- eval(parse(text=param_str_2))
            values$params_value = eval(parse(text=paste0("parse_params(",toString(paste0(param_str, "=as.numeric(params_eval[\'",param_str,"\']",")")),")")))
            values$res = values$m1$solve(values$params_value, ev,inits)
        }
    cmtChoice <- function(){
      cmt_names = names_CMT[stringr::str_detect(names(names_CMT),input$Id0109)]
      return(cmt_names)
      }
    }

shiny::runApp(launch.browser = TRUE,shiny::shinyApp(ui, server))

