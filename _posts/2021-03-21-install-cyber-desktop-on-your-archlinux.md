---
title:      在Archlinux上安装CyberOS的DesktopEnvironment
date:       2021-03-21
author:     竹林里有冰
categories: Linux
tags:       Linux
---

CyberOS是一款基于Archlinux的发行版，拥有其自主开发的桌面环境，如图。

![](https://storage.zhullyb.top/PicBed/CyberOS.png?raw)

既然是基于Archlinux，想必CyberOS也会有*.pkg.tar.zst/xz的安装包，理应也会有对应的源。在虚拟机中安装以后，果然发现了CyberOS的源。

与Arcolinux以及EndeavourOS等发行版一样，他们都是直接使用Archlinux的软件源外加自己的一个源。

CyberOS的源如下: 

> https://dir.omame.tech/cyber/

因此，我们在```/etc/pacman.conf```下添加一段

```
[cyber]
SigLevel = Never
Server = https://dir.omame.tech/cyber
```

Ps: 我这里偷了个懒，没有安装keyring，直接禁用了签名验证。如果你想要安装他们的keyring，可以直接从他们的Github下载安装。

```shell
git clone https://github.com/cyberos/cyberos-keyring.git
cd cyberos-keyring
makepkg -si
cd ..
rm -rf cyberos-keyring
```

添加完他们的源以后，使用pacman安装桌面环境。

```shell
sudo pacman -Sy cyber-meta
```

如果你安装了Display Manager，在注销以后即可在DM界面找到```Cyber Desktop```的登录选项。

如果你想要使用```startx```进入桌面，可以参考我[上一篇文章](/2021/03/14/lets-fuck-dm-and-use-startx/)

```.xinitrc```的最后一行启动DE的命令为```cyber-session```
