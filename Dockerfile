FROM redis
RUN apt-get update && apt-get install -y sysstat
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN mkdir /etc/redis
COPY redis.conf /etc/redis/redis.conf
COPY script.sh /temp/script.sh
CMD sh "/temp/script.sh"