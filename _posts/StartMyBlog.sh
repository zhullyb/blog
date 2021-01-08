_date=$(date +%Y-%m-%d)
_url=$(kdialog --inputbox url)
_title=$(kdialog --inputbox title)
_catagories=$(kdialog --inputbox catagories)
_tags=$(kdialog --inputbox tags)
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
