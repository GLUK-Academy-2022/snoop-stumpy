FROM golang:1.18 AS built
WORKDIR /usr/src/snoopy-stumpy 
COPY ./golang/ ./
RUN go build -o ./snoopy-stumpy main.go

FROM alpine:latest 
WORKDIR /usr/bin
COPY --from=built /usr/src/snoopy-stumpy/snoopy-stumpy ./
CMD ["./snoopy-stumpy"]

# dont include latest v on ;ine 6 
# give the second img a name 
# add line in the first block which will allow you to build the second img from scratch making it even smaller / faster 