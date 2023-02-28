FROM openjdk:8

RUN mkdir -p /output

ADD http://nilhcem.github.io/FakeSMTP/downloads/fakeSMTP-latest.zip /fakeSMTP-latest.zip

RUN Expand-Archive -PATH /fakeSMTP-latest.zip

VOLUME C:/email-output

EXPOSE 25

# RUN start /min java -jar ./fakeSMTP-latest/fakeSMTP-2.0.jar --background --output-dir C:\output --port 25 --start-server

#ENTRYPOINT [ "java","-jar","./fakeSMTP-latest/fakeSMTP-2.0.jar","--background", "--output-dir", "C:\output", "--port", "25", "--start-server"]

ENTRYPOINT ["java", "-jar", "C:\fakeSMTP-latest\fakeSMTP-2.0.jar", "-s"]