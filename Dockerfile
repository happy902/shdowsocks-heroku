FROM alpine:latest

RUN mkdir -m 777 /ss
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
