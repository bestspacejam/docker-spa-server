FROM nginx:1.13.5-alpine

ENV WORKDIR /var/www/html
WORKDIR $WORKDIR

RUN echo '<h1>This is default index.html</h1>' > index.html

COPY nginx/conf.d /etc/nginx/conf.d/

EXPOSE 80
