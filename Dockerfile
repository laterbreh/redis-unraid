FROM ubuntu

RUN apt-get update \
	&& apt-get install -y redis-server 
	

VOLUME ["/data"]

WORKDIR /data

CMD ["service", "redis", "start"]

#   process cluster webui
EXPOSE 6379
