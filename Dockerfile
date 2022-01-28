FROM node:14-alpine as build
WORKDIR /app
COPY ./Server .
RUN npm ci
COPY . .
RUN npm run build
        
FROM nginx:stable
ENV NGINX_PROTOCOL http2
COPY --from=build /app/ /usr/share/nginx/html
COPY nginx-config.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 3000

CMD ["nginx","-g","daemon off;"]