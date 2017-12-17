FROM golang:1.9

ADD . /tmp
CMD ["/tmp/hello/hello"]
