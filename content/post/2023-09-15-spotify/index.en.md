---
title: Spotify
author: Nickella Jose
date: '2023-09-15'
slug: spotify
categories:
  - R
tags:
  - R
subtitle: ''
summary: ''
authors: [Nickella jose]
lastmod: '2023-09-15T14:44:09+02:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---





The artists of the top 10 streamed songs on Spotify.These top 10 songs were released between January and April which most likely also affects the number of streams they receive. 
The number one streamed song was released in January while the other top 4 songs were all released in February. 
<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-3-1.png" width="672" /><img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-3-2.png" width="672" />







Here the top 100 songs were clustered by their level of energy and valency. Energy is a measure from 0 to 100 and represents a perceptual measure of intensity and activity. Typically, energetic tracks feel fast, loud, and noisy. For example, death metal has high energy, while a Lo-Fi or Lounge would scores low on the scale. Valence is associated with dynamic range, perceived loudness, timbre, onset rate, and general entropy.A measure from 0 to 100 describes the musical positiveness conveyed by a track. Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry).
Songs with lower  valency and lower energy depicted by the yellow  dots can be characterised by being sad and calm. In contrast, the purple dots highlights the songs that  with the opposite mood, these songs are more happy and energetic. Angry and energetic is the mood with the leas songs in top 100.
<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-5-1.png" width="672" />

Here the top 100 are classified by both their mood and number of streams, which I use as a proxy for popularity. Within the top 100 the songs with a happy and clam mood seems to be the most popular. 

<img src="{{< blogdown/postref >}}index.en_files/figure-html/unnamed-chunk-6-1.png" width="672" />

