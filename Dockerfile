FROM ghcr.io/virtualstaticvoid/heroku-docker-r:plumber
RUN apt-get -y update && apt-get install -y  libudunits2-dev libgdal-dev libgeos-dev libproj-dev
RUN R -e 'install.packages("sf")'
RUN R -e 'install.packages("readr")'
RUN R -e 'install.packages("geojsonio")'
ENV PORT=8080
CMD ["/usr/bin/R", "--no-save", "--gui-none", "-f", "/app/app.R"]