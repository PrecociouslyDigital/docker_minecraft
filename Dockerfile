FROM ubuntu:latest as download

WORKDIR /minecraft
RUN apt-get update && apt-get install -y curl unzip
RUN curl -SL http://solder.endermedia.com/repository/downloads/the-1122-pack/the-1122-pack_1.2.3.zip > pack.zip
RUN unzip pack.zip 

FROM openjdk:8-alpine

WORKDIR /minecraft
RUN echo "eula=true" > eula.txt
COPY --from=download /minecraft /minecraft

ENTRYPOINT ["sh", "LaunchServer.sh"]
