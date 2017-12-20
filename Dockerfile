FROM alpine:3.6

RUN apk add --no-cache nginx-mod-rtmp ffmpeg
    
EXPOSE 1935 8080
CMD ["nginx", "-g", "daemon off;"]
