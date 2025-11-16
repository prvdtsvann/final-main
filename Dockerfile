FROM golang:1.22

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go mod tidy 

RUN go build -o /final-main .

CMD ["/final-main"]