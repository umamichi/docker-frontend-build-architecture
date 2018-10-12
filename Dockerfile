FROM    centos:centos6

# yumコマンドを使えるようにするために必要
RUN  yum install -y epel-release

# Install Node.js and npm
FROM node:8
RUN  node -v

# Install app dependencies
COPY package.json /src/package.json
RUN  cd /src; yarn

# Bundle app source
COPY . /src

EXPOSE  8080
CMD ["node", "/src/index.js"]
