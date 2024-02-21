FROM debian:latest as builder
RUN apt-get update && apt-get install -y wget git 
RUN wget https://github.com/gren-lang/compiler/releases/download/0.3.0/gren_linux -O gren-linux 
RUN chmod +x ./gren-linux
RUN mv ./gren-linux /usr/local/bin
WORKDIR /app
COPY ./src ./src
COPY gren.json ./gren.json
RUN gren-linux make src/Hello.gren
FROM nginx:alpine
COPY --from=builder /app/index.html /usr/share/nginx/html