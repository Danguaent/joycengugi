FROM nginx:alpine
COPY . /usr/share/nginx/html
expose ek:5861
