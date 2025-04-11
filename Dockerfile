FROM golang:1.19-alpine

RUN apk add --no-cache git gcc musl-dev ffmpeg imagemagick

WORKDIR /app
COPY . .
RUN go build -o watgbridge

CMD ["./watgbridge"]
