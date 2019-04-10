## see https://github.com/openanalytics/r-base/blob/master/Dockerfile
FROM r-base:3.5.1

RUN Rscript -e "install.packages("Seurat")"
RUN Rscript -e "install.packages("devtools")"
RUN Rscript -e "install.packages("tidyverse")"
RUN Rscript -e "devtools::install_github("crazyhottommy/scclusteval")"
