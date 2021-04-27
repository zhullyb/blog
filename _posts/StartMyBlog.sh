_date=$(date -u +%Y-%m-%d)
echo "输入url"
read _url
echo "输入文章标题"
read _title
echo "输入标签（现存: Android/Fun/Linux/Python/Rom/Rom编译/Windows/大佬对话笔记/网络/笔记）"
read _tags
touch "$_date-$_url.md"
echo "---
title:      $_title
date:       $_date
author:     竹林里有冰
tags:       $_tags
---

" > "$_date-$_url.md"
