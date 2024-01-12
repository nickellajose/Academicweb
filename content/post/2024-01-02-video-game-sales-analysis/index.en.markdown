---
title: Video Game Sales Analysis
author: Nickella Jose
date: '2024-01-02'
comments: true 
slug: video-game-sales-analysis
categories: 
 - R
tags: 
 - R
subtitle: ''
summary: ''
authors: [Nickella Jose]
lastmod: '2024-01-02T13:47:31+01:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

<script src="{{< blogdown/postref >}}index.en_files/htmlwidgets/htmlwidgets.js"></script>
<script src="{{< blogdown/postref >}}index.en_files/plotly-binding/plotly.js"></script>
<script src="{{< blogdown/postref >}}index.en_files/typedarray/typedarray.min.js"></script>
<script src="{{< blogdown/postref >}}index.en_files/jquery/jquery.min.js"></script>
<link href="{{< blogdown/postref >}}index.en_files/crosstalk/css/crosstalk.min.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index.en_files/crosstalk/js/crosstalk.min.js"></script>
<link href="{{< blogdown/postref >}}index.en_files/plotly-htmlwidgets-css/plotly-htmlwidgets.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index.en_files/plotly-main/plotly-latest.min.js"></script>

<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-2-1.png" width="672" />

    ## `summarise()` has grouped output by 'Genre'. You can override using the
    ## `.groups` argument.

<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-2-2.png" width="672" />

``` r
#Most sold genre worldwide


vg_ts <- video_game %>%
group_by (Genre) %>%
summarize(Total_Sales = sum(Global_Sales)) %>% na.omit()

ggplot(data = vg_ts, mapping = aes(x = reorder(Genre, -Total_Sales), y = Total_Sales)) +
  geom_col(mapping = aes(fill = Genre)) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position = "None") +
  labs(title =  "Global Sales by Genre Worldwide",
       x = "Genre",
       y = "Sales (Millions)")+
  scale_fill_brewer(palette = "Set3")
```

<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-3-1.png" width="672" />

    ## `summarise()` has grouped output by 'Year_of_Release'. You can override using
    ## the `.groups` argument.

    ## Warning: Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
    ## ℹ Please use `linewidth` instead.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
    ## generated.

<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-4-1.png" width="672" />

<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-5-1.png" width="672" />

<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-6-1.png" width="672" />

    ## `summarise()` has grouped output by 'Name', 'Genre'. You can override using the
    ## `.groups` argument.

<div class="plotly html-widget html-fill-item" id="htmlwidget-1" style="width:672px;height:480px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"data":[{"orientation":"v","width":[19.600000000000001,22.280000000000001,14.32,13.199999999999999,21.16,20.240000000000002,13.279999999999999,18.48],"base":[13.550000000000001,17.550000000000001,4.5499999999999998,2.5499999999999998,15.550000000000001,14.550000000000001,3.5499999999999998,12.550000000000001],"x":[9.8000000000000007,11.140000000000001,7.1600000000000001,6.5999999999999996,10.58,10.120000000000001,6.6399999999999997,9.2400000000000002],"y":[0.89999999999999858,0.89999999999999858,0.90000000000000036,0.90000000000000036,0.89999999999999858,0.89999999999999858,0.90000000000000036,0.89999999999999858],"text":["Total_Sales:  19.60<br />reorder(Name, Total_Sales): Assassin's Creed Syndicate<br />Genre: Action","Total_Sales:  22.28<br />reorder(Name, Total_Sales): Batman: Arkham Knight<br />Genre: Action","Total_Sales:  14.32<br />reorder(Name, Total_Sales): Dying Light<br />Genre: Action","Total_Sales:  13.20<br />reorder(Name, Total_Sales): Far Cry: Primal<br />Genre: Action","Total_Sales:  21.16<br />reorder(Name, Total_Sales): LEGO Jurassic World<br />Genre: Action","Total_Sales:  20.24<br />reorder(Name, Total_Sales): Metal Gear Solid V: The Phantom Pain<br />Genre: Action","Total_Sales:  13.28<br />reorder(Name, Total_Sales): Monster Hunter X<br />Genre: Action","Total_Sales:  18.48<br />reorder(Name, Total_Sales): Uncharted: The Nathan Drake Collection<br />Genre: Action"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(141,211,199,1)","line":{"width":1.8897637795275593,"color":"transparent"}},"name":"Action","legendgroup":"Action","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":16.84,"base":9.5500000000000007,"x":[8.4199999999999999],"y":[0.89999999999999858],"text":"Total_Sales:  16.84<br />reorder(Name, Total_Sales): Mortal Kombat X<br />Genre: Fighting","type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(255,255,179,1)","line":{"width":1.8897637795275593,"color":"transparent"}},"name":"Fighting","legendgroup":"Fighting","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[79.319999999999993,57.119999999999997,24],"base":[28.550000000000001,26.550000000000001,18.550000000000001],"x":[39.659999999999997,28.559999999999999,12],"y":[0.89999999999999858,0.89999999999999858,0.89999999999999858],"text":["Total_Sales:  79.32<br />reorder(Name, Total_Sales): Fallout 4<br />Genre: Role-Playing","Total_Sales:  57.12<br />reorder(Name, Total_Sales): Pokemon Sun/Moon<br />Genre: Role-Playing","Total_Sales:  24.00<br />reorder(Name, Total_Sales): The Witcher 3: Wild Hunt<br />Genre: Role-Playing"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(190,186,218,1)","line":{"width":1.8897637795275593,"color":"transparent"}},"name":"Role-Playing","legendgroup":"Role-Playing","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[26.84,16.559999999999999,102.72,28.079999999999998,15.359999999999999,13.119999999999999,17.920000000000002,14.920000000000002,17.719999999999999,48.760000000000005,15.120000000000001,25.48,21.52],"base":[20.550000000000001,8.5500000000000007,29.550000000000001,21.550000000000001,7.5499999999999998,1.55,11.550000000000001,5.5499999999999998,10.550000000000001,25.550000000000001,6.5499999999999998,19.550000000000001,16.550000000000001],"x":[13.42,8.2799999999999994,51.359999999999999,14.039999999999999,7.6799999999999997,6.5599999999999996,8.9600000000000009,7.4600000000000009,8.8599999999999994,24.380000000000003,7.5600000000000005,12.74,10.76],"y":[0.89999999999999858,0.89999999999999858,0.89999999999999858,0.89999999999999858,0.89999999999999947,0.90000000000000013,0.89999999999999858,0.90000000000000036,0.89999999999999858,0.89999999999999858,0.90000000000000036,0.89999999999999858,0.89999999999999858],"text":["Total_Sales:  26.84<br />reorder(Name, Total_Sales): Battlefield 1<br />Genre: Shooter","Total_Sales:  16.56<br />reorder(Name, Total_Sales): Battlefield: Hardline<br />Genre: Shooter","Total_Sales: 102.72<br />reorder(Name, Total_Sales): Call of Duty: Black Ops 3<br />Genre: Shooter","Total_Sales:  28.08<br />reorder(Name, Total_Sales): Call of Duty: Infinite Warfare<br />Genre: Shooter","Total_Sales:  15.36<br />reorder(Name, Total_Sales): Destiny: The Taken King<br />Genre: Shooter","Total_Sales:  13.12<br />reorder(Name, Total_Sales): Gears of War: Ultimate Edition<br />Genre: Shooter","Total_Sales:  17.92<br />reorder(Name, Total_Sales): Halo 5: Guardians<br />Genre: Shooter","Total_Sales:  14.92<br />reorder(Name, Total_Sales): Overwatch<br />Genre: Shooter","Total_Sales:  17.72<br />reorder(Name, Total_Sales): Splatoon<br />Genre: Shooter","Total_Sales:  48.76<br />reorder(Name, Total_Sales): Star Wars Battlefront (2015)<br />Genre: Shooter","Total_Sales:  15.12<br />reorder(Name, Total_Sales): Tom Clancy's Rainbow Six: Siege<br />Genre: Shooter","Total_Sales:  25.48<br />reorder(Name, Total_Sales): Tom Clancy's The Division<br />Genre: Shooter","Total_Sales:  21.52<br />reorder(Name, Total_Sales): Uncharted 4: A Thief's End<br />Genre: Shooter"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(251,128,114,1)","line":{"width":1.8897637795275593,"color":"transparent"}},"name":"Shooter","legendgroup":"Shooter","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[65.200000000000003,45.879999999999995,29.640000000000001,13.08,32],"base":[27.550000000000001,24.550000000000001,22.550000000000001,0.55000000000000004,23.550000000000001],"x":[32.600000000000001,22.939999999999998,14.82,6.54,16],"y":[0.89999999999999858,0.89999999999999858,0.89999999999999858,0.89999999999999991,0.89999999999999858],"text":["Total_Sales:  65.20<br />reorder(Name, Total_Sales): FIFA 16<br />Genre: Sports","Total_Sales:  45.88<br />reorder(Name, Total_Sales): FIFA 17<br />Genre: Sports","Total_Sales:  29.64<br />reorder(Name, Total_Sales): Madden NFL 16<br />Genre: Sports","Total_Sales:  13.08<br />reorder(Name, Total_Sales): Madden NFL 17<br />Genre: Sports","Total_Sales:  32.00<br />reorder(Name, Total_Sales): NBA 2K16<br />Genre: Sports"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(128,177,211,1)","line":{"width":1.8897637795275593,"color":"transparent"}},"name":"Sports","legendgroup":"Sports","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null}],"layout":{"margin":{"t":43.762557077625573,"r":7.3059360730593621,"b":40.182648401826491,"l":247.67123287671237},"plot_bgcolor":"rgba(235,235,235,1)","paper_bgcolor":"rgba(255,255,255,1)","font":{"color":"rgba(0,0,0,1)","family":"","size":14.611872146118724},"title":{"text":"Top 30 Games Released between (2015-2020) by Global Sales ","font":{"color":"rgba(0,0,0,1)","family":"","size":17.534246575342465},"x":0,"xref":"paper"},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-5.1360000000000001,107.85599999999999],"tickmode":"array","ticktext":["0","25","50","75","100"],"tickvals":[0,25.000000000000004,50,75,100],"categoryorder":"array","categoryarray":["0","25","50","75","100"],"nticks":null,"ticks":"outside","tickcolor":"rgba(51,51,51,1)","ticklen":3.6529680365296811,"tickwidth":0.66417600664176002,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"","size":11.68949771689498},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":true,"gridcolor":"rgba(255,255,255,1)","gridwidth":0.66417600664176002,"zeroline":false,"anchor":"y","title":{"text":"Global Sales (Millions)","font":{"color":"rgba(0,0,0,1)","family":"","size":14.611872146118724}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[0.40000000000000002,30.600000000000001],"tickmode":"array","ticktext":["Madden NFL 17","Gears of War: Ultimate Edition","Far Cry: Primal","Monster Hunter X","Dying Light","Overwatch","Tom Clancy's Rainbow Six: Siege","Destiny: The Taken King","Battlefield: Hardline","Mortal Kombat X","Splatoon","Halo 5: Guardians","Uncharted: The Nathan Drake Collection","Assassin's Creed Syndicate","Metal Gear Solid V: The Phantom Pain","LEGO Jurassic World","Uncharted 4: A Thief's End","Batman: Arkham Knight","The Witcher 3: Wild Hunt","Tom Clancy's The Division","Battlefield 1","Call of Duty: Infinite Warfare","Madden NFL 16","NBA 2K16","FIFA 17","Star Wars Battlefront (2015)","Pokemon Sun/Moon","FIFA 16","Fallout 4","Call of Duty: Black Ops 3"],"tickvals":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],"categoryorder":"array","categoryarray":["Madden NFL 17","Gears of War: Ultimate Edition","Far Cry: Primal","Monster Hunter X","Dying Light","Overwatch","Tom Clancy's Rainbow Six: Siege","Destiny: The Taken King","Battlefield: Hardline","Mortal Kombat X","Splatoon","Halo 5: Guardians","Uncharted: The Nathan Drake Collection","Assassin's Creed Syndicate","Metal Gear Solid V: The Phantom Pain","LEGO Jurassic World","Uncharted 4: A Thief's End","Batman: Arkham Knight","The Witcher 3: Wild Hunt","Tom Clancy's The Division","Battlefield 1","Call of Duty: Infinite Warfare","Madden NFL 16","NBA 2K16","FIFA 17","Star Wars Battlefront (2015)","Pokemon Sun/Moon","FIFA 16","Fallout 4","Call of Duty: Black Ops 3"],"nticks":null,"ticks":"outside","tickcolor":"rgba(51,51,51,1)","ticklen":3.6529680365296811,"tickwidth":0.66417600664176002,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"","size":11.68949771689498},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":true,"gridcolor":"rgba(255,255,255,1)","gridwidth":0.66417600664176002,"zeroline":false,"anchor":"x","title":{"text":"Game Title","font":{"color":"rgba(0,0,0,1)","family":"","size":14.611872146118724}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":true,"legend":{"bgcolor":"rgba(255,255,255,1)","bordercolor":"transparent","borderwidth":1.8897637795275593,"font":{"color":"rgba(0,0,0,1)","family":"","size":11.68949771689498},"title":{"text":"Genre","font":{"color":"rgba(0,0,0,1)","family":"","size":14.611872146118724}}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"source":"A","attrs":{"5ad072464f11":{"x":{},"y":{},"fill":{},"type":"bar"}},"cur_data":"5ad072464f11","visdat":{"5ad072464f11":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.20000000000000001,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

<div id="disqus_thread">

</div>

<script>
  var disqus_config = function () {
    this.page.url = '{{ .Permalink }}';
    this.page.identifier = '{{ .UniqueID }}';
  };
  (function() {
    var d = document, s = d.createElement('script');
    s.src = 'https://your_disqus_shortname.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
  })();
</script>
<noscript>
Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>
</noscript>
