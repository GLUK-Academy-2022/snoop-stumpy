# FROM golang:1.18

# WORKDIR /usr/src/snoopy-stumpy

# COPY ./golang/ ./

# RUN go build -o ./server main.go

# EXPOSE 3000

# CMD ["./server"]


FROM golang:1.18 AS built
WORKDIR /usr/src/snoopy-stumpy 
COPY ./golang/ ./
RUN go build -o ./snoopy-stumpy main.go

FROM alpine:latest  
# RUN apk --no-cache add ca-certificates
WORKDIR /usr/bin
COPY --from=built /usr/src/snoopy-stumpy/snoopy-stumpy ./
CMD ["./snoopy-stumpy"]