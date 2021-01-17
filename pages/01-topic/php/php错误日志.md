# PHP错误日志

* PHP错误日志
  * Php.ini 文件
    * error_reporting = E_ALL       ;将会向PHP报告发生的每个错误 
    * display_errors = Off         ;不显示满足上条 指令所定义规则的所有错误报告
    * log_errors = On          ;开启错误日志
    *  log_errors_max_len = 1024        ;设置每个日志项的最大长度 
    * error_log = /data/app_data/php/logs/php_errors.log
    * php 代码里面用户自定log 使用  error_log()函数
  * PHP-FPM的错误日志
    * error_log = /data/app_data/php/logs/php-fpm_error.log
  * php-fpm 慢查询日志
    * slowlog = /data/app_data/php/logs/php-fpm_slow.log
  * 

