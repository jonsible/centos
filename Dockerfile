FROM centos:7

RUN yum makecache fast
RUN yum install -y python sudo yum-plugin-ovl bash iproute e2fsprogs
RUN sed -i 's/plugins=0/plugins=1/g' /etc/yum.conf
RUN yum clean all
