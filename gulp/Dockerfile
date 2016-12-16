FROM node:alpine

# check https://github.com/sass/node-sass/issues/1589 for prebuild node-sass
RUN apk add --no-cache --virtual tmp \
      g++ \
      git \
      libpcap-dev \
      make \
      python \
      ruby \
      ruby-dev \
      ruby-json \
    && npm install -g node-gyp \
    && gem install scss_lint --no-ri --no-rdoc \
    && apk del --purge

COPY package.json ./
RUN npm install

COPY gulpfile.js ./
CMD ["npm", "start"]
