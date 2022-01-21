FROM nginx:alpine
LABEL maintainer="Carlos Henryck | Davi Oliveira | Josué Eliel | Pedro Augusto"

COPY . /usr/share/nginx/html
