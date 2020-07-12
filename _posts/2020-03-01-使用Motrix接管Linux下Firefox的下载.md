---
layout:     post
title:      使用Motrix接管Linux下Firefox的下载
date:       2020-03-01
author:     竹林里有冰
tags:
    - Linux
    - 技术文档
    - 教程
    - 网络
---

* content
{:toc}

## 安装Motrix

首先去[Motrix官网](https://motrix.app/)下载AppImage文件

在AppImage所在的目录下打开一个Terminal

```
sudo chmod +x Motrix-1.4.1-x86_64.AppImage
```

双击打开，在弹出的界面上选择yes

## 配置Motrix所用代理（可选）

在设置-高级设置中打开代理，在代理服务器中输入地址，如果使用的electron-ssr的话，默认地址如下

```
http://127.0.0.1:12333
```

## 接管浏览器下载

下载安装[aria2下载器集成组件](https://addons.mozilla.org/zh-CN/firefox/addon/aria2-integration/)

将rpc服务器端口设为16800即可
