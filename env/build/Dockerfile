FROM nginx:alpine

WORKDIR /website_enviorment/src
COPY  client/index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
