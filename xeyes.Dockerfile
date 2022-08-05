FROM alpine:latest
RUN apk update && apk add --no-cache xeyes
WORKDIR /work
CMD ["ash"]