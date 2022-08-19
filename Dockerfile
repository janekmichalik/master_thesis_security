FROM golang:1.7.3

ARG EDIT_DATE=""

ENV STUDENT_PASSWORD=leaked_password

LABEL maintainer=""
LABEL maintainer_email_address=""
LABEL modification_date=$EDIT_DATE

WORKDIR /student

RUN go get -d -v golang.org/x/net/html
COPY app.go	.

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

CMD ["./app"]
