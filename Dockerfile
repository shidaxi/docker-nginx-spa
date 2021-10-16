FROM nginx:1.21-alpine

ENV ROOT_DIR=/opt/app

WORKDIR ${ROOT_DIR}

EXPOSE 8080

RUN mkdir -p ${ROOT_DIR} && \
    echo "daemon off;" >> /etc/nginx/nginx.conf && \
    echo "<code>Add your index.html to nginx root dir: ${ROOT_DIR}: COPY index.html ${ROOT_DIR}/index.html</code>" > ${ROOT_DIR}/index.html

COPY default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx"]
