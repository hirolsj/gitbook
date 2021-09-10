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

COPY src/* .

RUN gitbook install ./

VOLUME /srv/gitbook /srv/data /srv/html

EXPOSE 4000 35729

CMD ["sleep", "10000d"]
#CMD /usr/local/bin/gitbook serve
