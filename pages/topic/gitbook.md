# gitbook

一般GitBook目录如下：

```
.
├── book.json
├── README.md
├── SUMMARY.md
├── chapter-1/
|   ├── README.md
|   └── something.md
└── chapter-2/
    ├── README.md
    └── something.md
```

简单介绍每一项：

| 文件          | 说明                                                         |
| ------------- | ------------------------------------------------------------ |
| `book.json`   | 保存 [配置文件](http://gitbook.hushuang.me/config.html)数据(**可选**) |
| `README.md`   | 简介 - 书籍的简单介绍(**必填**)                              |
| `SUMMARY.md`  | 目录(参见[目录管理](http://gitbook.hushuang.me/pages.html))(**可选**) |
| `GLOSSARY.md` | 字段/注释 - 专业术语列表(参见[词汇表](http://gitbook.hushuang.me/lexicon.html))(**可选**) |



### 静态文件

静态文件是在`SUMMARY.md`中未列出的文件。所有静态文件，包含图片、JS、CSS都会复制到对应目录下，

### 忽略的文件和文件夹

GitBook将读取`.gitignore`、`.bookignore`和`.ignore`文件，以获取要忽略的文件和文件夹的列表。被忽略的文件不会被上传到版本中。 这些文件中的格式遵循与`.gitignore`相同的约定：

```
＃井号代表这是一行注释

＃忽略文件test.md
test.md

＃忽略目录“bin”中的所有内容
bin/*
```

### 以子目录的方式与项目集成

对于软件项目，可以使用子目录(如`docs/`)来存储项目的文档。您可以在`book.json`中通过[配置](http://gitbook.hushuang.me/config.html)选项告诉GitBook在那里找到根目录：

```
.
├── book.json
└── docs/
    ├── README.md
    └── SUMMARY.md
```

`book.json` 中的配置如下：

```
{
    "root": "./docs"
}
```



#### 顶部描述

页面可以用它作为描述。 它使用`YAML`格式的风格，在三条虚线之间。 文档中也可以不写顶部描述。

> **特别提示**:在没有安装支持插件之前，不要在文件中使用，否则编译或者运行会失败。

这里有一个基本的例子：

```yaml
---
description: This is a short description of my page
---

# The content of my page
...
```

