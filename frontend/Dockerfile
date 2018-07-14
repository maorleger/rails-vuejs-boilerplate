FROM node:9.11.1-alpine
MAINTAINER Maor Leger <maor.leger@gmail.com>

ENV APP_HOME /app
#
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
#
# Install app dependencies
COPY package.json $APP_HOME/
COPY yarn.lock $APP_HOME/
RUN yarn install

COPY . $APP_HOME

EXPOSE 4000
CMD ["yarn", "dev"]

