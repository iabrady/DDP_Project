Developing Data Products  
========================================================
# Course Project  
## Eric Vanhove  
## September 27, 2015  

Purpose  
========================================================

- To write a `shiny` application with associated supporting documentation;whatever
a user will need to get started using the application.  
- To deploy the application on Rstudio's shiny server.  
- To share the server.R and ui.R code on github.
- To learn how to use widgets and reactivity on `shiny`.
- To learn how to use either `slidify` or `rpresentations`.

Discussion
========================================================

- I wanted to play around with the Edgar Anderson iris database, readily available through the R package `datasets` and so avoid any data-related problems.  
- I designed a quick k-means cluster-er BUT!  
- I noticed that RStudio had something very similar SO...  
- I added a little bit to the app so that the user could see how they had done in their clustering, and  
- I got rid of an error that RStudio had (they allowed the user to choose to use the label for clustering).  

Links
========================================================

The `shiny` app is [here](https://evohnave.shinyapps.io/ddp_project)  
My github repo is [here](https://github.com/evohnave/DDP_Project)  
And this presentation file is [here](http://rpubs.com/evohnave/DDP_Project)  

Image
========================================================

Here's a screen capture of my app:  
![](https://github.com/evohnave/DDP_Project/blob/master/DDP_Project.PNG?raw=true)

Code
========================================================

And since we have to run some code in the presentation:  

```r
library(datasets)
data <- iris
str(iris)
```

```
'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```
