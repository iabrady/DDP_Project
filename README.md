# DDP_Project
Project for Developing Data Products

This repo contains the files for the Johns Hopkins University Data 
Specialization Course "Developing Data Products" course project.

The course project is to write a shiny application and share it on github.

The shiny app is [here](https://evohnave.shinyapps.io/ddp_project).

This project clusters the data from the Edgar Anderson iris database from the R
package `datasets`.  (Note that I exclude the ability to use the labels since it
often results in an error in the plotting.)  The user is able to pick two of the 
four variables (`sepal.length`, `sepal.width`, `petal.length`, or `petal.width`)
to be used to cluster and then selects the number of clusters (from 1 to 9). 

Files in this repo:  
1.  .gitignore  
4.  DDP_Project.png - a screenshot of my `shiny` app  
2.  DDP_presentation.Rpres - the rpresentation file of my presentation.  
2.  DDP_presentation.md - the markdown version.  
2.  README.md - this file  
1.  DDP_Project.Rproj - The Rproject file for my project  
2.  server.R - shiny server file  
3.  ui.R - shiny ui file  


