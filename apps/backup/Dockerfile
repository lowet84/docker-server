FROM alpine:3.6

RUN apk add --no-cache p7zip
WORKDIR /settings
ADD backup.sh /backup.sh
CMD sh /backup.sh
