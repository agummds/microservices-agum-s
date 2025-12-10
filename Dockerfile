<<<<<<< HEAD
FROM node:14.21-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8000
CMD [ "npm", "run", "serve" ]
=======
FROM golang:1.15-alpine

WORKDIR /go/src/github.com/dicodingacademy/karsajobs
ENV GO111MODULE=on
ENV APP_PORT=8080

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN mkdir /build; \
    go build -o /build/ ./...

EXPOSE 8080
CMD ["/build/web"]
>>>>>>> karsajobs
