FROM nginx:1.11

MAINTAINER Povilas Balciunas <balciunas90@gmail.com>

RUN apt-get update -qy
RUN apt-get install -y python3.4 python3-pip supervisor git
RUN pip3 install git+https://github.com/povilasb/httpbin@develop

ADD ssl/cert.pem /etc/nginx/
ADD ssl/key.pem /etc/nginx/

ADD httpbin.conf /etc/nginx/conf.d/
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD /usr/bin/supervisord
