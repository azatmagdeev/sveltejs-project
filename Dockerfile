FROM node:16-alpine as build
WORKDIR /app
COPY . .
RUN npm install && npm run build

FROM nginx:stable-alpine
COPY --from=build /app/public /usr/share/nginx/html
