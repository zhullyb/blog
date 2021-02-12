---
layout:     post
title:      repo笔记
date:       2020-07-11
author:     竹林里有冰
categories: Shell
tags:
    - Linux
---

* content
{:toc}

### 清除同步过程中产生的不完整碎片文件

在```源码路径/.repo```下搜索tmp_pack
将搜索结果中出现的所有文件全部删除

以下命令仅供参考

```bash
rm -rf */*/*/*/objects/pack/tmp_pack_*
```

### repo自动同步

##### 下载脚本

```shell
curl https://raw.githubusercontent.com/zhullyb/repo.sh/master/repo.sh > repo.sh
```

##### 运行脚本

```shell
bash repo.sh
```

