FROM node
RUN apt-get update && apt-get install -y vim nano

RUN mkdir /flatris
COPY package.json /flatris
WORKDIR /flatris
RUN yarn install

COPY . /flatris
RUN yarn test && yarn build
EXPOSE 3000
CMD yarn start
