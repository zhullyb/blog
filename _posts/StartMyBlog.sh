_date=$(date -u +%Y-%m-%d)
echo "输入url"
read _url
echo "输入文章标题"
read _title
echo "输入分类（现存: Shell/Rom/Android/汉化/Linux）"
read _catagories
echo "输入标签（现存: Android/Fun/Linux/Python/Rom/Rom编译/Windows/大佬对话笔记/网络）"
read _tags
touch "$_date-$_url.md"
echo "---
layout:     post
title:      $_title
date:       $_date
author:     竹林里有冰
categories: $_catagories
tags:       $_tags
---

* content
{:toc}
" > "$_date-$_url.md"
