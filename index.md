---
title       : Stock Trend App
subtitle    : ShinyApp
author      : Sandhya K Prasad
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz, shiny, interactive]     # {mathjax, quiz, bootstrap,shiny,interactive}
ext_widgets: {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Stock Trend App Key Features

1. Easy and Intuitive User InterFace.
2. Fetches the stock quote over a date range .
3. Displays the stock price Trend using a Plot.
4. Calculates and displays the stock percent change for the provided date range.
5. Displays the retrieved information of the stock as a table. 

---

## App in Action

<div class="row-fluid">
  <div class="span4">
    <form class="well">
      <label class="control-label" for="symbol">Choose Symbol</label>
      <select id="symbol"><option value="AAPL" selected>AAPL</option>
<option value="GOOG">GOOG</option>
<option value="FB">FB</option>
<option value="VZ">VZ</option>
<option value="TSLA">TSLA</option>
<option value="TWTR">TWTR</option></select>
      <script type="application/json" data-for="symbol" data-nonempty="">{}</script>
    </form>
  </div>
  <div class="span8">
    <div id="plot" class="shiny-html-output nvd3 rChart"></div>
    <h3 align="center">
      <div id="percentChange" class="shiny-text-output"></div>
    </h3>
  </div>
</div>

---
## NVD3 Plot Inline


<div id = 'chart15922b00d08f' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart15922b00d08f()
    });
    function drawchart15922b00d08f(){  
      var opts = {
 "dom": "chart15922b00d08f",
"width":    800,
"height":    400,
"x": "wt",
"y": "mpg",
"type": "scatterChart",
"id": "chart15922b00d08f" 
},
        data = [
 {
 "mpg":             21,
"cyl":              6,
"disp":            160,
"hp":            110,
"drat":            3.9,
"wt":           2.62,
"qsec":          16.46,
"vs":              0,
"am":              1,
"gear":              4,
"carb":              4 
},
{
 "mpg":             21,
"cyl":              6,
"disp":            160,
"hp":            110,
"drat":            3.9,
"wt":          2.875,
"qsec":          17.02,
"vs":              0,
"am":              1,
"gear":              4,
"carb":              4 
},
{
 "mpg":           22.8,
"cyl":              4,
"disp":            108,
"hp":             93,
"drat":           3.85,
"wt":           2.32,
"qsec":          18.61,
"vs":              1,
"am":              1,
"gear":              4,
"carb":              1 
},
{
 "mpg":           21.4,
"cyl":              6,
"disp":            258,
"hp":            110,
"drat":           3.08,
"wt":          3.215,
"qsec":          19.44,
"vs":              1,
"am":              0,
"gear":              3,
"carb":              1 
},
{
 "mpg":           18.7,
"cyl":              8,
"disp":            360,
"hp":            175,
"drat":           3.15,
"wt":           3.44,
"qsec":          17.02,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              2 
},
{
 "mpg":           18.1,
"cyl":              6,
"disp":            225,
"hp":            105,
"drat":           2.76,
"wt":           3.46,
"qsec":          20.22,
"vs":              1,
"am":              0,
"gear":              3,
"carb":              1 
},
{
 "mpg":           14.3,
"cyl":              8,
"disp":            360,
"hp":            245,
"drat":           3.21,
"wt":           3.57,
"qsec":          15.84,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              4 
},
{
 "mpg":           24.4,
"cyl":              4,
"disp":          146.7,
"hp":             62,
"drat":           3.69,
"wt":           3.19,
"qsec":             20,
"vs":              1,
"am":              0,
"gear":              4,
"carb":              2 
},
{
 "mpg":           22.8,
"cyl":              4,
"disp":          140.8,
"hp":             95,
"drat":           3.92,
"wt":           3.15,
"qsec":           22.9,
"vs":              1,
"am":              0,
"gear":              4,
"carb":              2 
},
{
 "mpg":           19.2,
"cyl":              6,
"disp":          167.6,
"hp":            123,
"drat":           3.92,
"wt":           3.44,
"qsec":           18.3,
"vs":              1,
"am":              0,
"gear":              4,
"carb":              4 
},
{
 "mpg":           17.8,
"cyl":              6,
"disp":          167.6,
"hp":            123,
"drat":           3.92,
"wt":           3.44,
"qsec":           18.9,
"vs":              1,
"am":              0,
"gear":              4,
"carb":              4 
},
{
 "mpg":           16.4,
"cyl":              8,
"disp":          275.8,
"hp":            180,
"drat":           3.07,
"wt":           4.07,
"qsec":           17.4,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              3 
},
{
 "mpg":           17.3,
"cyl":              8,
"disp":          275.8,
"hp":            180,
"drat":           3.07,
"wt":           3.73,
"qsec":           17.6,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              3 
},
{
 "mpg":           15.2,
"cyl":              8,
"disp":          275.8,
"hp":            180,
"drat":           3.07,
"wt":           3.78,
"qsec":             18,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              3 
},
{
 "mpg":           10.4,
"cyl":              8,
"disp":            472,
"hp":            205,
"drat":           2.93,
"wt":           5.25,
"qsec":          17.98,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              4 
},
{
 "mpg":           10.4,
"cyl":              8,
"disp":            460,
"hp":            215,
"drat":              3,
"wt":          5.424,
"qsec":          17.82,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              4 
},
{
 "mpg":           14.7,
"cyl":              8,
"disp":            440,
"hp":            230,
"drat":           3.23,
"wt":          5.345,
"qsec":          17.42,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              4 
},
{
 "mpg":           32.4,
"cyl":              4,
"disp":           78.7,
"hp":             66,
"drat":           4.08,
"wt":            2.2,
"qsec":          19.47,
"vs":              1,
"am":              1,
"gear":              4,
"carb":              1 
},
{
 "mpg":           30.4,
"cyl":              4,
"disp":           75.7,
"hp":             52,
"drat":           4.93,
"wt":          1.615,
"qsec":          18.52,
"vs":              1,
"am":              1,
"gear":              4,
"carb":              2 
},
{
 "mpg":           33.9,
"cyl":              4,
"disp":           71.1,
"hp":             65,
"drat":           4.22,
"wt":          1.835,
"qsec":           19.9,
"vs":              1,
"am":              1,
"gear":              4,
"carb":              1 
},
{
 "mpg":           21.5,
"cyl":              4,
"disp":          120.1,
"hp":             97,
"drat":            3.7,
"wt":          2.465,
"qsec":          20.01,
"vs":              1,
"am":              0,
"gear":              3,
"carb":              1 
},
{
 "mpg":           15.5,
"cyl":              8,
"disp":            318,
"hp":            150,
"drat":           2.76,
"wt":           3.52,
"qsec":          16.87,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              2 
},
{
 "mpg":           15.2,
"cyl":              8,
"disp":            304,
"hp":            150,
"drat":           3.15,
"wt":          3.435,
"qsec":           17.3,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              2 
},
{
 "mpg":           13.3,
"cyl":              8,
"disp":            350,
"hp":            245,
"drat":           3.73,
"wt":           3.84,
"qsec":          15.41,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              4 
},
{
 "mpg":           19.2,
"cyl":              8,
"disp":            400,
"hp":            175,
"drat":           3.08,
"wt":          3.845,
"qsec":          17.05,
"vs":              0,
"am":              0,
"gear":              3,
"carb":              2 
},
{
 "mpg":           27.3,
"cyl":              4,
"disp":             79,
"hp":             66,
"drat":           4.08,
"wt":          1.935,
"qsec":           18.9,
"vs":              1,
"am":              1,
"gear":              4,
"carb":              1 
},
{
 "mpg":             26,
"cyl":              4,
"disp":          120.3,
"hp":             91,
"drat":           4.43,
"wt":           2.14,
"qsec":           16.7,
"vs":              0,
"am":              1,
"gear":              5,
"carb":              2 
},
{
 "mpg":           30.4,
"cyl":              4,
"disp":           95.1,
"hp":            113,
"drat":           3.77,
"wt":          1.513,
"qsec":           16.9,
"vs":              1,
"am":              1,
"gear":              5,
"carb":              2 
},
{
 "mpg":           15.8,
"cyl":              8,
"disp":            351,
"hp":            264,
"drat":           4.22,
"wt":           3.17,
"qsec":           14.5,
"vs":              0,
"am":              1,
"gear":              5,
"carb":              4 
},
{
 "mpg":           19.7,
"cyl":              6,
"disp":            145,
"hp":            175,
"drat":           3.62,
"wt":           2.77,
"qsec":           15.5,
"vs":              0,
"am":              1,
"gear":              5,
"carb":              6 
},
{
 "mpg":             15,
"cyl":              8,
"disp":            301,
"hp":            335,
"drat":           3.54,
"wt":           3.57,
"qsec":           14.6,
"vs":              0,
"am":              1,
"gear":              5,
"carb":              8 
},
{
 "mpg":           21.4,
"cyl":              4,
"disp":            121,
"hp":            109,
"drat":           4.11,
"wt":           2.78,
"qsec":           18.6,
"vs":              1,
"am":              1,
"gear":              4,
"carb":              2 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

---
## Design Of The App

1. Designed using R **Shiny** Application.
2. Stock Quote Data retrieval is powered by the **Quantmod** R package .
3. Data source is obtained from **Yahoo Finance** Data .
4. Application is served by the **shinyapps.io** server.
5. These slides are generated using **slidify** and **rCharts** packages.

---

## Quick Links

1. [Stock Price Trend App](https://sandykp.shinyapps.io/StockTrendApp/)

2. [Documentation](https://sandykp.shinyapps.io/StockTrendApp/stockTrendShinyApp.html)

3. [Github Code Repository](https://github.com/Sandhyakprasad/DevelopingDataProducts.git)





