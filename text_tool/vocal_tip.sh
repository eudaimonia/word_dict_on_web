#!/bin/bash

template=../template/template.html
dst_dir=../html

css_dir_var=css
js_dir_var=js
title_var=$(basename $1)
content_var=$(sed "s/\(\w\+\)/<a class=vocal_tip>\1<\/a>/g" $1)

 echo $(sed -e "s/{{ *title *}}/${title_var}/g" \
      -e "s/{{ *css_dir *}}/${css_dir_var}/g" \
      -e "s/{{ *js_dir *}}/${js_dir_var}/g" \
      -e "s/{{ *content *}}/${content_var}/g" ${template}) # XXX: there are unescaped meta symbol in content_var
