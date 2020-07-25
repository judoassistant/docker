FROM node:14.5.0-alpine3.12

# create destination directory
RUN mkdir -p /usr/src/judoassistant
WORKDIR /usr/src/judoassistant

# update and install dependency
RUN apk update && apk upgrade
RUN apk add git

# set build time arguments
ARG WEB_SOCKET_URL=wss://live.judoassistant.com/ws

# set run time arguments
ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 8000

# copy the app
COPY . /usr/src/judoassistant/

# install dependencies
RUN npm install

# build static files
RUN npm run build

# expose port
EXPOSE 8000

# start the app
CMD [ "npm", "start" ]

