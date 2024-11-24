#!/usr/bin/sh

export LC_ALL=zh_CN.UTF-8
gcc -Wall -Wextra -pedantic -Wconversion test.cc
gcc -Wall -Wextra -pedantic -Wconversion test.c

exit 0