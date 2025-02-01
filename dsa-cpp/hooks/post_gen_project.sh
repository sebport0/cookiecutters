#!/bin/bash

name="{{cookiecutter.name}}"
lang="{{cookiecutter.lang}}"
source="{{cookiecutter.source}}"

if [ "${source,,}" == "leetcode" ]; then
  link=$(echo "$name" | sed 's/^[0-9]*\. //')
  link=${link// /-}
  link="https://leetcode.com/problems/$(echo "$link" | tr "[:upper:]" "[:lower:]")"
  code_path=${name//". "/_}
  code_path=$(echo "$code_path" | tr " " "_" | tr "[:upper:]" "[:lower:]")
  code_path="/problems/leetcode/$code_path"
fi
echo "| [$name]($link) | [$lang]($code_path) | $source |" >> ./../../../README.md
