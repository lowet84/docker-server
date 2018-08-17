FROM alpine
RUN apk add --no-cache wget docker bash
RUN wget "https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download" -O /usr/bin/gdrive
RUN chmod +x /usr/bin/gdrive
ENV GDRIVE_CONFIG_DIR=/config
ADD backup.sh /backup.sh
CMD bash /backup.sh
