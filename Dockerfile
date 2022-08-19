FROM golang:1.7.3

WORKDIR /student

RUN go get -d -v golang.org/x/net/html
COPY app.go	.

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

CMD ["./app"]