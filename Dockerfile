FROM centos

RUN yum -y install httpd unzip 

#RUN echo "Hey there! .. welcome to docker hub" > /var/www/html/index.html

#COPY /src /var/www/html

ADD https://github.com/SilenceHVK/front-ui/archive/master.zip /var/www/html/code.zip

RUN cd /var/www/html/ && unzip code.zip && mv /var/www/html/front-ui-master/* /var/www/html

CMD apachectl -DFOREGROUND
