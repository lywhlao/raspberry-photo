#!/bin/bash
# 获取当前日期时间并格式化
datetime=$(date +"%Y-%m-%d-%H-%M-%S")

rpicam-jpeg -o $datetime.jpg