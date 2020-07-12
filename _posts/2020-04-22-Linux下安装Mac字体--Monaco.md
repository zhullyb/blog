---
layout:     post
title:      Linux下安装Mac字体--Monaco
subtitle:   给你的Terminal换一个完美的字体
date:       2020-04-22
author:     竹林里有冰
header-img: img/post-bg-ios9-web.jpg
catalog: true
tags:
    - Linux
    - Ubuntu
    - 技术文档
    - 教程
    - 原创脚本
---
# 一键脚本

### 适用于大多发行版：

```
cd /usr/share/fonts/truetype/ && sudo mkdir ttf-monaco && cd ttf-monaco/ && sudo wget https://gitee.com/zhullyb/bin/raw/master/Monaco_Linux.ttf && sudo mkfontdir && cd .. && fc-cache
```

### Arch系：

```
yay -S ttf-monaco
```

