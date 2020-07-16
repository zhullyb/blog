#!/usr/bin/venv python

"""
本程序需要额外下载easygui模块
"""

import time
import easygui
date = time.strftime("%Y-%m-%d", time.localtime())
title = easygui.enterbox("请输入文章标题")
categories = easygui.enterbox("请输入文章分类")
tags = easygui.enterbox("请输入文章标签")
f = open(date+"-"+title+".md",'w')
f.write('---\n')
f.write('layout:     post\n')
f.write('layout:     post\n')
f.write('title:      '+title+'\n')
f.write('date:       '+date+'\n')
f.write('author:     竹林里有冰\n')
f.write('categories: '+categories+'\n')
f.write('tags:       '+tags+'\n')
f.write('---\n')
f.write('\n')
f.write('* content\n')
f.write('{:toc}\n')
f.write('\n')
f.close()
