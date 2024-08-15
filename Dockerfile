FROM ubuntu
RUN apt-get update -y && apt install nginx -y && echo "Welcome to Nandha-Labs" > /var/www/html/index.nginx-debian.html
CMD ["nginx", "-g", "daemon off;"]
