FROM golang:1.18

WORKDIR /usr/src/snoopy-stumpy

COPY . .

RUN go build -o ./server main.go

EXPOSE 3000

CMD ["./server"]


