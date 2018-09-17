FROM alpine as wget
ENV USER=UmVzdW1lOlNBUTZENkZO

RUN apk add --no-cache unzip wget
RUN wget https://resume.fredriklowenhamn.se/export/$USER -O resume.zip
RUN unzip resume.zip

FROM pierrezemb/gostatic

COPY --from=wget /index.html /srv/http/index.html
COPY --from=wget /profile.jpeg /srv/http/profile.jpeg
COPY --from=wget /intro.jpeg /srv/http/intro.jpeg
