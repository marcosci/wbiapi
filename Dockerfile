FROM virtualstaticvoid/heroku-docker-r:plumber
RUN apt-get install -y  libudunits2-dev libgdal-dev libgeos-dev libproj-dev libjq-dev libprotobuf-dev
RUN R -e 'install.packages("sf")'
RUN R -e 'install.packages("readr")'
RUN R -e 'install.packages("geojsonio")'
ENV PORT=8080

# override the base image CMD to run Plumber
CMD ["/usr/bin/R", "--no-save", "--gui-none", "-f", "/app/app.R"]