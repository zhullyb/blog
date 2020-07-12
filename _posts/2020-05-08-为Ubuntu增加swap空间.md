---
layout:     post
title:      为Ubuntu增加swap空间
date:       2020-05-08
author:     竹林里有冰
categories: Shell
tags:
    - Linux
    - 技术文档
    - 教程
---

* content
{:toc}

## 什么是swap？

swap就是交换分区，你可以理解为虚拟内存，在内存不够用的时候暂时拿硬盘顶上，会影响运行速度，因此在电脑运行的时候一般不会主动使用swap，而会优先使用物理内存。但是在某些特定的场合，swap真的能够救你一命！

## 我的Ubuntu当前有多少swap？

我们可以通过一下命令查看swap和物理内存的大小

```
free -m
```

## 我需要配置多少swap？

一般来说，Ubuntu安装时默认为你配置了2G的swap，但是我们一般推荐swap大小为真实物理内存的两倍。

# 方法一：添加swap

## 创建swap路径

```
mkdir swap
cd swap
```

## 添加swap文件

```swift
sudo dd if=/dev/zero of=sfile bs=1024 count=1000000
```

Ps：count=1000000参数代表数量，这个正好是1g，直接增大1g

## 转化为swap文件

```
sudo mkswap sfile
```

## 激活swap文件

```
sudo swapon sfile
```

# 到这里，我们就成功添加了swap，只不过是临时的，如需永久添加swap，那么需要修改fstab文件

```
sudo nano /etc/fstab
```

在最后一行加上

```
# swap
/home/xxx(你的用户名)/swap/sfile none swap sw 0 0
```

```
Ctrl+O保存，回车保存文件名，Ctrl+X退出
```

# 方法二：重新分配已有swap(20200508新增)

```
cd /
sudo su
swapoff /swapfile
rm -rf /swapfile
fallocate -l 10G /swapfile
mkswap /swapfile
swapon /swapfile
```



## 可使用```free -m```命令再次查看当前swap
