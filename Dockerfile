FROM httpd:alpine

RUN apk add --no-cache ca-certificates wget && update-ca-certificates

RUN wget -qO- http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.4.2.0/ambari-2.4.2.0-centos7.tar.gz | tar xvz -C /usr/local/apache2/htdocs/
RUN wget -qO- http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.5.3.0/HDP-2.5.3.0-centos7-rpm.tar.gz | tar xvz -C /usr/local/apache2/htdocs/
RUN wget -qO- http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.21/repos/centos7/HDP-UTILS-1.1.0.21-centos7.tar.gz | tar xvz -C /usr/local/apache2/htdocs/

COPY hdp.repo /usr/local/apache2/htdocs/hdp.repo

