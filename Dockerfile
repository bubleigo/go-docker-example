FROM golang:onbuild
RUN cd /go/src/app && go test
EXPOSE 8080
