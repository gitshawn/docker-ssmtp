FROM alpine

COPY start.sh /start.sh

RUN apk update

RUN apk add ssmtp

CMD ['./start.sh']
