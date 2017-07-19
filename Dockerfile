FROM rocker/verse:3.4.0

MAINTAINER Fabian

COPY . /mytestpkg

RUN . /etc/environment \



# install package
&& R -e "devtools::install('/mytestpkg', dep = TRUE)" \

# run rmarkdown
&& R -e "rmarkdown::render('{/mytestpkg/analysis/tets.Rmd')"
