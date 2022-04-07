# STEP 1 
FROM golang:alpine as build
RUN apk update && apk add --no-cache git
WORKDIR /src
COPY . .
RUN go mod tidy
RUN go test --coverage
RUN go build -o sample-golang-jenkins

#STEP 2
FROM alpine
WORKDIR /app
COPY --from=build /src/sample-golang-jenkins /app
ENTRYPOINT [ "/app/sample-golang-jenkins" ]