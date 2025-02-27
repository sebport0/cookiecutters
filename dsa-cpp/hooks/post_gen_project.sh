#!/bin/bash

name="{{cookiecutter.name}}"
lang="{{cookiecutter.lang}}"
source="{{cookiecutter.source}}"
link="{{cookiecutter.link}}"

if [ "${source,,}" == "leetcode" ]; then
  code_path=${name//". "/_}
  code_path=$(echo "$code_path" | tr " " "_" | tr "[:upper:]" "[:lower:]")
  code_path="/problems/leetcode/$code_path"
fi
echo "| [$name]($link) | [$lang]($code_path) | $source |" >> ./../../../README.md
