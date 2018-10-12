FROM    centos:centos6

# Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
RUN     yum install -y epel-release
# Install Node.js and npm
FROM node:8
# RUN     yum install -y nodejs npm

# Install app dependencies
COPY package.json /src/package.json
RUN cd /src; npm config set strict-ssl false; npm install --production; npm config set strict-ssl true

# Bundle app source
COPY . /src
RUN node -v
RUN npm -v

EXPOSE  8080
CMD ["node", "/src/index.js"]
