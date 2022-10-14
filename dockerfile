FROM golang:1.18
WORKDIR /Users/aliciabarczak/Desktop/Academy/Academy_exercises/snoopy-stumpy
COPY . .
RUN go build -o /bin/server ./main.go
CMD ["./bin/server"]


