FROM mozart/grails:2.4.4
MAINTAINER Manuel Ortiz Bey <ortiz.manuel@mozartanalytics.com>

COPY ./app /app

# Run Grails refresh-dependencies command to 
# pre-download dependencies but not create
# unnecessary build files or artifacts.
RUN grails refresh-dependencies

ENTRYPOINT ["grails"]
CMD ["run-app"]