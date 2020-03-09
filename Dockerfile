ARG PHP_VERSION=7.3
FROM playsportsgroup/php:${PHP_VERSION}-cli-alpine-root

USER root

RUN apk --no-cache add ca-certificates openssh-client rsync git nodejs nodejs-npm \
  && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-git-crypt/master/sgerrand.rsa.pub \
  && wget https://github.com/sgerrand/alpine-pkg-git-crypt/releases/download/0.6.0-r1/git-crypt-0.6.0-r1.apk \
  && apk add git-crypt-0.6.0-r1.apk \
  && npm install -g terser

RUN mkdir /root/baler
WORKDIR /root/baler

RUN git clone https://github.com/magento/baler.git .

RUN npm install && npm run build && npm link
