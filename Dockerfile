FROM golang:alpine

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /gorchestr8

EXPOSE 3333

CMD ["/gorchestr8"]