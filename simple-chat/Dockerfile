FROM docker.io/library/golang:alpine as builder
WORKDIR /app
COPY simple-chat-v1.0.1/server/* ./

RUN apk add make
RUN make clean && make go.mod && make server

FROM docker.io/library/alpine:latest
WORKDIR /app
COPY --from=builder /app/server /app/server

RUN adduser -H -D -u 1001 me
USER me:me

EXPOSE 8080
CMD [ "/app/server-bin" ]

