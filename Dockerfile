FROM alpine
RUN apk update && apk add -y sysstat
COPY script.sh /temp/script.sh
RUN chmod +x /temp/script.sh
CMD sh "/temp/script.sh"