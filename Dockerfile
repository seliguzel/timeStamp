FROM nginx:alpine
WORKDIR /app
COPY index.json /usr/share/nginx/html/
COPY . /app

RUN apk update && apk add bash

RUN chmod +x ch_build_date.sh
RUN chmod +x ch_deploy_date.sh
RUN sh /app/ch_build_date.sh

CMD /app/ch_deploy_date.sh && nginx -g 'daemon off;'
