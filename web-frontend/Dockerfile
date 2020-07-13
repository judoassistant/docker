FROM node:14.5.0-alpine3.12

# create destination directory
RUN mkdir -p /usr/src/judoassistant
WORKDIR /usr/src/judoassistant

# update and install dependency
RUN apk update && apk upgrade
RUN apk add git

# copy the app, note .dockerignore
COPY . /usr/src/judoassistant/
RUN npm install

# build necessary, even if no static files are needed,
# since it builds the server as well
RUN npm run build

# expose 5000 on container
EXPOSE 8000

# set app serving to permissive / assigned
ENV NUXT_HOST=0.0.0.0
# set app port
ENV NUXT_PORT=8000

ENV WEB_SOCKET_URL=wss://live.judoassistant.com

# start the app
CMD [ "npm", "start" ]

