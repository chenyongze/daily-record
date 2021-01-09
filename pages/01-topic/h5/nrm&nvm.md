## nrm切换淘宝镜像&nvm管理node版本及切换

```
nrm是切换淘宝镜像用的，nvm是node的版本切换用的（可在自己电脑安装多个版本node，便于不同项目的支持）

一、nrm的安装及常见命令：

安装nrm
npm install -g nrm

查看镜像列表
nrm ls

切换镜像
nrm use taobao

在nrm添加自己的镜像地址
nrm add r_name r_url

删除
nrm del r_name

测试镜像的相应速度
nrm test r_name

二、使用nvm管理node版本及切换

第一步：下载nvm
可以到这里下载链接：https://pan.baidu.com/s/1wW4fH8XnXRiachXHb1Pckw 密码：pn90
或者到github上下载最新版本https://github.com/coreybutler/nvm-windows/releases

nvm-setup.zip：这是一个安装包，下载之后点击安装，无需配置就可以使用，方便。

第二部：安装

之后，按照提示完成安装即可，安装完成后可以检测一下是否安装成功
在命令行输入nvm，如果出现nvm版本号和一系列帮助指令，则说明nvm安装成功；否则，可能会提示nvm: command not found

第三步：修改settings.txt
在你安装的目录下找到settings.txt文件，打开后加上
node_mirror: https://npm.taobao.org/mirrors/node/
npm_mirror: https://npm.taobao.org/mirrors/npm/

nvm常见命令如下：

nvm arch 显示node是运行在32位还是64位模式

nvm list available 显示可下载版本的部分列表

nvm install 版本号 安装指定的版本的nodejs

nvm use 版本号 使用指定版本的nodejs

nvm list查看目前已经安装的版本
nvm on： 启用node.js版本管理。
nvm off： 禁用node.js版本管理(不卸载任何东西)
```

