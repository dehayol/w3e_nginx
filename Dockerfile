FROM nginx:stable
COPY w3e.conf.template /etc/nginx/
CMD  /bin/bash -c "envsubst < /etc/nginx/w3e.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"