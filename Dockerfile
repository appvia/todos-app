FROM golang:1.17-alpine as builder
WORKDIR /build
COPY go.mod go.sum server.go ./
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -a -o todos-app .

FROM alpine:3.15
COPY public ./public
COPY views ./views
COPY --from=builder /build/todos-app .
EXPOSE 8080
CMD [ "./todos-app" ]
