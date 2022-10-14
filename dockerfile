FROM golang:1.18

WORKDIR /usr/src/banana

COPY . .

RUN go build -o ./apple main.go

EXPOSE 3000

CMD ["./apple"]


