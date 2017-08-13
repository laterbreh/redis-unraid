FROM ubuntu

RUN apt-get update \
	&& apt-get install -y redis-server 
	

VOLUME ["/data"]

WORKDIR /data

CMD ["redis-cli"]
CMD ["ping"]

#   process cluster webui
EXPOSE 6379
