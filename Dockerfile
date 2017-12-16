FROM golang:1.9

ADD . /tmp
WORKDIR /tmp/hello
RUN go build
CMD ["/tmp/hello/hello"]
