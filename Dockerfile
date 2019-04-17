## see https://github.com/openanalytics/r-base/blob/master/Dockerfile
FROM r-base:3.5.1

## important to have single quote around the pacakge names, double quotes will fail
RUN Rscript -e "install.packages('devtools')"
RUN Rscript -e "devtools::install_version('Seurat', version = '2.3.3', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('tidyverse')"
RUN Rscript -e "devtools::install_github('crazyhottommy/scclusteval')"
