---
layout:     post
title:      Linux下安装Mac字体--Monaco
date:       2020-04-22
author:     竹林里有冰
categories: Shell
tags:
    - Linux
    - Ubuntu
    - 技术文档
    - 教程
    - 原创脚本
---

* content
{:toc}

# 一键脚本

### 适用于大多发行版：

```shell
cd /usr/share/fonts/truetype/ && sudo mkdir ttf-monaco && cd ttf-monaco/ && sudo wget https://gitee.com/zhullyb/bin/raw/master/Monaco_Linux.ttf && sudo mkfontdir && cd .. && fc-cache
```

### Arch系：

```shell
yay -S ttf-monaco
```

