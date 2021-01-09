# centos 服务器部署



### ssh 无密码登录

```shell
ssh-copy-id root@1.x.x.x
```

### 服务器更新

```shell
 yum update -y
```
### 安装git screen 

```shell
yum install git screen -y
```

更改hostname

```shell
vim /etc/hostname
```

### 安装docker  、docker-compose

```shell
#下载docker-ce的repo
curl https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
#安装依赖[自己使用最新的]
yum install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm
#安装docker-ce
yum install docker-ce
#启动docker
systemctl start docker
#加入开机启动
systemctl enable docker
#安装docker-compose
pip3 install docker-compose
```

