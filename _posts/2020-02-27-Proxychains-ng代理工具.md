---
layout:     post
title:      Proxychains-ng代理工具
subtitle:   使用Procychains-ng作为代理工具，灵活便捷
date:       2020-02-27
author:     竹林里有冰
header-img: img/post-bg-ios9-web.jpg
catalog: true
tags:
    - Linux
    - 技术文档
    - 教程
    - 网络
---
# 代理详解

本篇中，我使用的是[electron-ssr](https://github.com/shadowsocksrr/electron-ssr)，配合Proxychains-ng获得了完美体验！

## electron-ssr

### 安装electron-ssr

下载[electron-ssr](https://github.com/shadowsocksrr/electron-ssr/releases),这里建议下载[AppImage](https://github.com/shadowsocksrr/electron-ssr/releases/download/v0.2.7/electron-ssr-0.2.7.AppImage)格式的包，不会有任何的依赖问题。

```
cd xxx #xxx指的是源码所在路径
sudo chmod +x electron-ssr-0.2.7.AppImage
```

然后双击该文件即可

### 配置electron-ssr

配置这一块没什么好讲的，只要导入节点即可，记得把代理模式改为全局模式

## Proxychains-ng

### 安装Proxychains-ng

这里需要git支持，为了保险起见可以再安装一遍

```
sudo apt install git
```

接着clone对应的仓库

```
git clone https://github.com/rofl0r/proxychains-ng.git --depth=1 && cd proxychains-ng
```

完成以后即可使用su权限进行编译

```
sudo su      #获取su权限
```

```
./configure --prefix=/usr --sysconfdir=/etc
make 
make install
make install-config
```

### 配置Proxychains-ng

```
sudo nano /etc/proxychains.conf
```

我们再弹出来的窗口上找到最后一行，改成```socks5	127.0.0.1	1080```

nano保存方法：

```
Ctrl+O保存，并回车确认不更改文件名
Ctrl+X离开编辑器
```

## 使用

每次执行需要代理的命令前，我们在命令最前面+```proxychains4```即可

## 优化项

这里我们主要利用```alias```增加别名

打开```/home```路径下的```.bashrc```文件

在最末尾行加上(tizi可以改为自己喜欢的字符串)

```
alias tizi='proxychains4'
```

这样我们每次执行需要代理的命令前就不需要写```proxychains4```这么长的字符串了，可以用tizi代理

e.g.```tizi curl www.google.com```

同样，我们也可以在```.bashrc```后面再加一行（daili也可以改为自己喜欢的字符串）

```
alias daili='proxychains4 -q /bin/bash'
```

这样的话，每次你打开终端只需要输入```daili```就可以给当前的命令行窗口连上代理了

使用如下命令即可一键添加tizi、daili两个别名

```
echo “alias tizi='proxychains4'
alias daili='proxychains4 -q /bin/bash'" >> ~/.bashrc
```

