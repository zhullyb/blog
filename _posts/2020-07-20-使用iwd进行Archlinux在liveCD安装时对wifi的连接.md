---
layout:     post
layout:     post
title:      使用iwd进行Archlinux在liveCD安装时对wifi的连接
date:       2020-07-20
author:     竹林里有冰
categories: Shell
tags:       Linux 网络 教程
---

* content
{:toc}
Archlinux的liveCD安装镜像在2020年7月移除了netctl，也就是说，我们常用的```wifi-menu```命令不能再用了。

因此，我们需要学习新的wifi连接工具——iwd。

1. 输入```iwd```命令进入iwd

   ```shell
   [root@archiso~] iwctl
   [iwd#]
   ```

   

2. 在```[iwd#]```中输入```device list```查询机器的网卡设备，我们称你的网卡设备为```<devicename>```

3. 使用以下命令查询附近可用的wifi网络，我们称你的wifi名为```<wifi-ssid>```

   ```shell
   [iwd#] station <devicename> scan
   [iwd#] station <devicename> get-networks
   ```

4. 在提示符中输入如下命令连接wifi网络，如果wifi加密，会提示你输入密码

   ```shell
   [iwd#] station <devicename> connect <wifi-ssid>
   ```

   

完成！