 FROM node:14-alpine as build
 WORKDIR /app
 COPY package*.json ./
 RUN npm ci
 COPY . ./
 RUN npm run build
    
 FROM nginx:1.20-alpine
 ENV NGINX_PROTOCOL http2
 COPY --from=build /app/public /usr/share/nginx/html
 COPY nginx-config /etc/nginx