FROM alpine:latest AS builder
#WORKDIR /var/www/html/
COPY data.txt ./

FROM fedora AS final 
WORKDIR /var/www/html/
COPY --from=builder ./data.txt ./data.txt