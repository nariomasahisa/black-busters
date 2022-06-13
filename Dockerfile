FROM --platform=arm64 node:18.3
WORKDIR /app
COPY ./package.json /app/
COPY ./runserver.sh /app/
RUN chmod 777 /app/runserver.sh
ENTRYPOINT ["/app/runserver.sh"]