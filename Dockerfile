FROM ubuntu
RUN apt-get update -y && apt install curl nginx -y
RUN curl https://raw.githubusercontent.com/nandha-coder/Docker/master/index.html -o /var/www/html/index.nginx-debian.html
EXPOSE 80
HEALTHCHECK --interval=5s CMD curl http://127.0.0.1:80
CMD ["nginx", "-g", "daemon off;"]
