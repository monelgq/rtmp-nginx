FROM alpine:3.6

RUN apk add --no-cache nginx-mod-rtmp ffmpeg

RUN mkdir -p /www/play/flv &&  \
       chown -R nginx:nginx /www/play
    
EXPOSE 1935 8080
CMD ["nginx", "-g", "daemon off;"]
