FROM golang:alpine AS build

COPY . .

RUN unset GOPATH && CGO_ENABLED=0 go build -a -o /blog .

FROM alpine

COPY --from=build /blog /blog

EXPOSE 3000

CMD ["/blog"]
