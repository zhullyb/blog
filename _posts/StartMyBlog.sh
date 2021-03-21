_date=$(date -u +%Y-%m-%d)
_url=$(kdialog --inputbox url)
_title=$(kdialog --inputbox 标题（Shell/Rom/Android/汉化/Linux）)
_catagories=$(kdialog --inputbox 分类（Android/Fun/Linux/Python/Rom/Rom编译/Windows/大佬对话笔记/网络）)
_tags=$(kdialog --inputbox 标签)
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
