library(rCharts)
library(quantmod)
output$plot <- renderChart({
#         haireye = as.data.frame(HairEyeColor)
#         n1 <- nPlot(Freq ~ Hair, group = 'Eye', type = 'multiBarChart',
#                     data = subset(haireye, Sex == 'Male')
#         )
#         n1$set(dom = 'plot', width = 600)
#         n1
        
        stockDf <- getSymbols(input$symbol,src="yahoo", auto.assign = FALSE)
        quoteDf  <- data.frame(stockDf)
        quoteDf$date = as.Date(rownames(quoteDf))
        colnames(quoteDf)[4]  <- 'price' 
        
        n <- nrow(quoteDf)
        percent  <- round((((quoteDf[n,4]-quoteDf[1,4])/quoteDf[1,4])*100),2)
        label <- "The percent change in stock value for the shown date range is :"
        output$percentChange <- renderText(paste(label,percent,"%"))  
        
        n1 <- nPlot(price ~ date, type = 'lineChart',
                    data = quoteDf
        )
        n1$xAxis(
                tickFormat =   "#!
                function(d) {return d3.time.format('%m-%d-%y')(new Date(d*1000*3600*24));}
                !#"
                #rotateLabels = -90
        )        
        n1$set(dom = 'plot', width = 600)
        n1        
})