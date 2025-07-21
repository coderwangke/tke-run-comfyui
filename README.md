# TKE run ComfyUI

## 介绍

TKE run ComfyUI 提供在 TKE 集群中的部署指导。

## 镜像制作

``` bash	
$ cd images && DOCKER_BUILDKIT=1 docker build -f dockerfile.cu121 -t tke-run-comfyui:cu121 .
```