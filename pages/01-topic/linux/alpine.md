## Alpine

#### alpine 与 centos 差异

* **空间大小差异，alpine默认5M左右，centos等都在200M左右。**
* **默认软件包差异，alpine选用busybox，centos等则是bash+coreutils几件套**
* **alpine中，国际化组件被优化掉了**
* **glibc差异，alpine选用musl，centos等选用glibc，其他的倒还好，libc的差异对开发很重要**
* 

#### 命令

```
apk update                              #从远程镜像源中更新本地索引 
apk upgrade                             #升级本地安装的软件
apk add                                 #从仓库中安装最新软件包和对应的依赖包 
apk add -u                              #升级指定软件包
apk del                                 #删除软件包
apk search                              #搜索软件包
apk search -v                           #查找所以可用软件包及其描述内容
apk search -v 'busybox'                 #通过软件包名称查找软件包
apk search -v -d 'busybox'              #通过描述文件查找特定的软件包
apk info                                #列出所有已安装的软件包
apk info -a                             #显示完整的软件包信息 
apk info --who-owns                     #显示指定文件属于的包
apk info -r                             #列出所有包的依赖
apk info -s                             #显示软件包大小
apk info -d                             #显示软件包的描述
apk -L info                             #列出软件包的内容 
apk -e info                             #检测软件包的安装
apk -R info                             #列出指定包的依赖
```

#### 修改镜像

* ```
  阿里云
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
  ```

* ```
  中科大
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
  ```

  

