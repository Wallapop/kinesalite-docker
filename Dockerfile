FROM node:boron

USER root
ENV DATADIR /var/lib/kinesalite
RUN npm install kinesalite
RUN mkdir -p $DATADIR
EXPOSE 4567
VOLUME $DATADIR
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "--path", "/var/lib/kinesalite"]
