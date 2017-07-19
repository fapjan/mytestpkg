FROM rocker/verse:3.4.0

MAINTAINER Fabian

COPY . /mytestpkg

RUN . /etc/environment \

# install package
&& R --vanilla "devtools::install('/mytestpkg', dep = TRUE)" \

# run rmarkdown
&& R --vanilla "rmarkdown::render('/mytestpkg/analysis/tets.Rmd')"
