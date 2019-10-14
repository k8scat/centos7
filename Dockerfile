FROM centos:7

LABEL maintainer="hsowan <admin@ncucoder.com>"

RUN yum update -y && \
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make libffi-devel wget && \
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz && \
tar -xvf Python-3.7.2.tar.xz && \
cd Python-3.7.2 && \
./configure prefix=/usr/local/python3 && \
make && \
make install && \
ln -s /usr/local/python3/bin/python3.7 /usr/bin/python3 && \
ln -s /usr/local/python3/bin/pip3.7 /usr/bin/pip3.7 && \
# remove libffi-devel failed
yum erase -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make wget && \
rm -rf Python-3.7.2.tar.xz Python-3.7.2