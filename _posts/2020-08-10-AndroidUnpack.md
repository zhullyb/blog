---
layout:     post
title:      安卓解包笔记
date:       2020-08-10
author:     竹林里有冰
categories: Rom Android
tags:       Android shell
---

* content
{:toc}
```
brotli -d system.new.dat.br
sdat2img system.transfer.list system.new.dat
mount system.img {known_path}
```

[brotli]: https://github.com/google/brotli
[sdat2img]: https://github.com/xpirt/sdat2img



