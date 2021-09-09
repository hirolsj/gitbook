FROM node:6-slim

MAINTAINER leishengjun leishengjun2010@qq.com

ARG VERSION=3.2.2

LABEL version=$VERSION

RUN npm config set registry http://r.npm.taobao.org/ &&\
    npm install --global gitbook-cli &&\
	gitbook fetch ${VERSION} &&\
	npm cache clear &&\
	rm -rf /tmp/* 

WORKDIR /srv/gitbook

COPY book.json .

RUN gitbook install ./

VOLUME /srv/gitbook /srv/html

EXPOSE 4000 35729

CMD ["sleep", "1000d"]
#CMD /usr/local/bin/gitbook serve
