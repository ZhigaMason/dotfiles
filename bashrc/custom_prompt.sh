#!/bin/bash

GIT_BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/')
export PS1='${GIT_BRANCH} @\w \$ '

