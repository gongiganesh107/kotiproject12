FROM ubuntu
MAINTAINER ADDRESS "MyAppliContainer"
RUN apt update && apt install apache2 -y
COPY ./index.html /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
