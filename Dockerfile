# See: http://phusion.github.io/baseimage-docker/
# baseimage is an docker friendly version of ubuntu
FROM phusion/baseimage:0.10.1
FROM r-base:3.5.1

RUN Rscript -e "install.packages("Seurat")"
RUN Rscript -e "install.packages("devtools")"
RUN Rscript -e "devtools::install_github("crazyhottommy/scclusteval")"
