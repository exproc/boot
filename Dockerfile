FROM nginx:mainline-alpine
RUN mkdir -pv /etc/nginx/conf2.d
RUN rm /usr/share/nginx/html/index.html
COPY src/usr/share/nginx/html/* /usr/share/nginx/html
RUN ls -la /usr/share/nginx/html
COPY src/conf/ /etc/nginx
COPY src/conf.d/ /etc/nginx/conf.d/ 
RUN apk add -U tzdata bash
ENV TZ=America/New_York
RUN cp /usr/share/zoneinfo/America/New_York /etc/localtime