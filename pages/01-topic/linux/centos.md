# centos

* 查看版本  **rpm -q centos-release**

* 当前centos 版本与redhat对应的版本的命令 cat /proc/version

*  ls -lrt                按时间显示文件（l表示详细列表，r表示反向排序，t表示按时间排序）

* head -2 file1           查看一个文件的前两行 

* more file1             查看一个长文件的内容

* More  less vim  cat 区别

* tac file1               从最后一行开始反向查看一个文件的内容

* tail -3 file1            查看一个文件的最后三行

* grep str -r /tmp/*       在目录 '/tmp' 及其子目录中查找 "str"

* grep ^str /tmp/test      在文件 '/tmp/test' 中查找以 "str" 开始的行

* diff file1 file2           找出两个文件的不同处

*  sdiff file1 file2          以对比的方式显示两个文件的不同

* find -maxdepth 1 -type f | xargs grep -F 'expr'  在当前目录中查找 'expr'

* find /usr/bin -type f -mtime -10               查找在10天内被创建或者修改过的文件

*  find /usr/bin -type f -atime +100             查找在过去100天内未被使用过的执行文件

* yum -y install [package]       下载并安装一个rpm包

* yum -y update               更新当前系统中安装的所有rpm包

* yum update [package]          更新一个rpm包

* yum remove [package]         删除一个rpm包

* yum list                       列出当前系统中安装的所有包

* yum search [package]         在rpm仓库中搜寻软件包

*  yum clean [package]           清除缓存目录（/var/cache/yum）下的软件包

* yum clean headers             删除所有头文件

* yum clean all                   删除所有缓存的包和头文件

* yum localinstall [package.rpm]   安装一个rpm包，使用你自己的软件仓库解决所有依赖关系

* 网络

  * ifconfig eth0                                    显示一个以太网卡的配置
  * ifdown eth0                                    禁用 'eth0' 网络设备
  * ifup eth0                                       启用 'eth0' 网络设备
  * ip addr show                                   显示网卡的IP地址

* 其他

  * su -                 切换到root权限（与su有区别）

  * shutdown -h now      关机

  * top                  罗列使用CPU资源最多的linux任务 （输入q退出）

  *  pstree               以树状图显示程序

  * passwd             修改密码

  *  df -h                显示磁盘的使用情况

  * cal -3               显示前一个月，当前月以及下一个月的月历

  * cal 10 1988          显示指定月，年的月历

  * free -m:看内存占用   free -h

  * Stat  file.txt  查看文件基本信息

    







