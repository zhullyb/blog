---
title:      刷机常见问题Q&A
date:       2020-11-13
tags:       Rom
---

## 我现在想要XXX/从XXX刷到XXX，是否需要格式化/清除data分区？

首先先来明确一下概念，什么是【格式化data分区】和【清除data分区】。【格式化data分区】是指在TWRP界面需要你输入YES手动确认的那个，而【清除data分区】则是在TWRP界面会让你勾选你所需要清除的分区并滑动滑动确认的。【格式化data分区】会将整个data分区彻底格式化，所有的数据都会被删除，而【清除data分区】则会保留你在内置储存区域的文件。

在大多数情况下其实是并没有必要【格式化data分区】的，除了一种情况——data分区被强制加密。data分区被强制加密的表现是TWRP进入的时候要求你输入密码，如果不输入密码直接进入，则你看到的文件都会变成乱码。这是你的系统进行了文件加密来保证你的手机在丢了的情况下，没有人能在不用密码的前提下拿到你的数据。加密的文件可以在你输入密码以后被读取，但是不能变成未加密的状态，这时我们就只能通过【格式化data分区】来格式化整个data分区。

除此以外，大多数情况下只需要清除data分区就可以了，有些底层比较相似的Rom甚至连data分区都不需要清除就可以正常使用，但是我仍然推荐你在换Rom之前清除data分区，否则仍然有可能会有奇奇怪怪的bug。我上次就在ArrowOS不清除data分区的情况下刷入了AICP导致了基带丢失。

总而言之，除了同一安卓大版本的同一作者的同一Rom更新以外，换Rom我都建议你清除data分区。当然从类原生到另一个类原生你也可以保证试试看的心态不清除data分区直接换Rom，前提是你一定要备份好数据，谁都不能保证你会不会因此而卡米、丢失重要数据。在做好两手准备的前提下，我不反对你进行尝试，同一Rom的安卓大版本更新也是同理。

## 我为什么强调反馈问题时不要使用第三方内核/模块/修改？

> 你平时可以使用任何修改。你的手机你自己做主，怎么用起来开心你说了算。问题在于，我不是那些模块、内核、修改的作者，我也没办法知道他们具体会对手机做什么，我维护的ROM究竟跟这些东西兼容不兼容。如果你遇到了问题，我如何知道问题的来源究竟是那些修改，还是ROM本身的问题呢？
>
> 你反馈一个问题过来，我这边会亲自尝试复现，检查代码，并联系其他熟悉的测试者来测试。我重视你的每一句话，也请你尊重我和这些测试者的时间。已经不知道多少次了，某个用户反馈问题时就一句话，也没提过自己用了什么其他东西，我这边花了几个小时各种检查，最后发现其实是某个模块导致的。这种案例一天来个几次，我就不用干别的了。
>
> 基于AOSP的ROM和MIUI在许多层面上都很不一样，所以很多在MIUI上没问题的修改，并不适合照搬到AOSP上面。尤其是一些所谓的对性能有提升的内核或者调度，你刷完以后，真的对比过前后的差别吗，你能确定性能是在提升而不是倒退吗？绝大部分用户可能根本不知道如何科学的测试某一项性能指标，也不是随便什么跑分都能做到这一点的。不可重复的、无法量化的“体感”对于判断性能没有任何帮助。在你不确定自己在做什么的时候，做减法比做加法重要。
>

——引自jjpprrrr的酷安

## 这次更新了什么？

我不知道，我不清楚，自己去看Rom的github，我没那个闲工夫给你写更新日志。

## 类原生安卓11打不开微信？

~~我这边确实收到了很多用户的反馈，说我们的类原生11打不开微信，目前情况未知，但是可以确定的是，刷了gapps的用户都没有出现这个问题，因此你可以尝试下输入gapps，如果对于gapps不怎么使用的用户我这边推荐你刷bitgapps，刷完以后不用打开放在那里就行。~~据说是eng的问题，现在都已经改用userdebug了，不会再出现这个问题。

## 这个包带不带gapps/firmware/vendor，我该用什么版本的firmware？

带不带vendor或者firmware其实很容易判断，打开zip包看一眼就知道了，如图：

![图为小米8带gapps带firmware的derpfest](https://od.zhullyb.top/?file=/PicBed/IMG_20201113_213237.jpg)

至于没有firmware的包直接用最新开发版的firmware就可以了。

带不带gapps可以直接从包的大小看出，带gapps的包比不带gapps的包要大上个两三百MB，像PixelExperience带了完整全家桶的还会更大。对于小米8的类原生来说你可以直接以包是否大于1G来作为判断依据，大于1G的基本上都是带gapps的。

## 小米8屏下指纹版能不能刷？

很抱歉，我手里就只有小米8普通版的机子，没有办法对屏下指纹版本做适配，所以你可以试着刷一刷，但是这Rom并不是为你的机型适配的。
