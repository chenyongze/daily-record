

# yii2

* composer 管理依赖包工具
  * --prefer-dist 优先缓存
  * 
* 版本
  * Yiisoft/yii2-app-advanced  高级应用模板
    * 命令行目录
    * 前台目录
    * 后台目录
  * Yiisoft/yii2-app-basic 基础
* yii 命令
* init 初始化命令



### yii1 yii2 区别

```
 // yii1
Yii::app()

Yii::log($query,  CLogger::LEVEL_ERROR, $category = 'application');


// yii2 
Yii::$app

use yii\log\Logger;
Yii::getLogger()->log($message, Logger::LEVEL_ERROR, $category = 'application');

```

### 组件

  * 属性
  * 事件 	
  * 行为
组件是 Yii 应用的主要基石。是 yii\base\Component 类或其子类的实例



