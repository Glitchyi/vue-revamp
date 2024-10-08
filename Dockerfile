FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
CMD [ "npm" , "run" , "build"]
EXPOSE 80
FROM nginx:latest
COPY --from=0 ../usr/src/app/dist/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD [ "nginx" , "-g" , "daemon off;" ]