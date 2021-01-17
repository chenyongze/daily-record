# syslog系统日志

syslog是Linux系统默认的日志守护进程。默认的syslog配置文件是/etc/sysctl.conf文件

通常，syslog 接受来自系统的各种功能的信息，每个信息都包括重要级。/etc/syslog.conf 文件通知 syslogd 如何根据设备和信息重要级别来报告信息。



```shell
/var/log/lastlog ：记录最后一次用户成功登陆的时间、登陆IP等信息
/var/log/messages ：记录Linux操作系统常见的系统和服务错误信息
/var/log/secure ：Linux系统安全日志，记录用户和工作组变坏情况、用户登陆认证情况
/var/log/btmp ：记录Linux登陆失败的用户、时间以及远程IP地址
/var/log/cron ：记录crond计划任务服务执行情况



grep '查找关键字段' /var/log/messages|head -n 行数
grep '查找关键字段' /var/log/messages|tail -n 行数
```

