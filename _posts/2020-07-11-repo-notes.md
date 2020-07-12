---
layout:     post
title:      repo-notes
subtitle:   用于记录不常用的repo使用技巧
date:       2020-07-11
author:     竹林里有冰
header-img: img/post-bg-ios9-web.jpg
catalog: true
tags:
    - Linux
    - 教程
    - 技术文档
---
# repo-notes

### 清除同步过程中产生的不完整碎片文件

在```源码路径/.repo```下搜索tmp_pack
将搜索结果中出现的所有文件全部删除

### repo自动同步

##### 下载脚本

```
curl https://raw.githubusercontent.com/zhullyb/repo.sh/master/repo.sh > repo.sh
chmod a+x repo.sh
```

##### 运行脚本

```
bash repo.sh
```

