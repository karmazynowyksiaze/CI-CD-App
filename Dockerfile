FROM nginx:alpine

RUN mkdir /htmlwebsite

ADD . /htmlwebsite

COPY src/client/index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]