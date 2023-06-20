FROM golang:1.20

WORKDIR /app

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod main.go ./
RUN go build

COPY . .
# RUN go build -v -o /usr/local/bin/app ./...

CMD ["./fc-imersao13-go"]
