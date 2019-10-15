# Centos7 with Python3.7.2

## 运行

```bash
docker run -it hsowan/centos7 /bin/bash

[root@c0cabe7ad1b1 /]# python3 -V
Python 3.7.2

```

## 构建

```bash
git clone git@github.com:hsowan-me/centos7.git
cd centos7
docker build .

```

## 参考文章

* [CentOS 7 下 安装 Python3.7](https://segmentfault.com/a/1190000015628625)