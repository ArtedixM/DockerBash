FROM alpine:3.17
RUN apk update && apk upgrade
RUN apk add bash
COPY scriptmynd.sh /scriptmind.sh
RUN chmod +x /scriptmind.sh
ENTRYPOINT ["/scriptmind.sh"]