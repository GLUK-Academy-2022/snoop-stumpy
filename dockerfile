FROM golang:1.18 AS built
WORKDIR /usr/src/snoopy-stumpy 
COPY ./golang/ ./
RUN go build -o ./snoopy-stumpy main.go

FROM alpine:latest  
WORKDIR /usr/bin
COPY --from=built /usr/src/snoopy-stumpy/snoopy-stumpy ./
CMD ["./snoopy-stumpy"]