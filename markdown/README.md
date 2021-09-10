# Introduction

## 构建
docker build .


## 启动命令

docker run -d --name=gitbook --restart=always -p 80:4000 -v $(pwd):/srv/data -v /data/html:/srv/html hirolsj/gitbook bash



docker exec gitbook bash start.sh
