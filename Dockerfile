FROM golang:1.21
WORKDIR /app
ENV HOST_ADDR="0.0.0.0:8080"
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
EXPOSE 8080
CMD ["go", "run", "main.go"]