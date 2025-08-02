FROM golang:1.20
WORKDIR /app
COPY ./src /app
RUN go mod init app && go get github.com/gin-gonic/gin
RUN go build -o server
CMD ["./server"]
