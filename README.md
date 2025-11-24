# Modelling code for chlorophyll sensors  

Code for the project [Refining Techniques for High-Frequency Monitoring of Chlorophyll in the NERRS](https://nerrssciencecollaborative.org/project/Dix20), led by Dr. Nikki Dix of GTM NERR and funded by the NERRS Science Collaborative. This repository contains code in which we try to derive the most [appropriate] predictive model for extracted chlorophyll from YSI EXO2 sensors. See the linked project page for all details,  project outputs, and links to code from other parts of the project!  


The end-of-project code is [commit 780d86d](https://github.com/swmpkim/chl_sensor_project/commit/780d86d325271f05ba9c671f6d235bbcc3ec5abf).  

Updates have been made in November of 2025 to address reviewer comments. At least one package has changed and code needed to be modified to account for this. After merging the branch where updates were made into 'main', I started using the `renv` package to make any future updates easier. On a new computer with the `renv` package installed, you need to open up the `.Rproj` file for this project and in the console, run `renv::restore()`. This will install the correct versions of needed packages into the project repository (without affecting other versions of the packages elsewhere on your computer).  