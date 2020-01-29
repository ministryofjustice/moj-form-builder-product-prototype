FROM node:13.7-alpine3.10

COPY . .

RUN npm install
RUN node ./node_modules/gulp/bin/gulp generate-assets

CMD node listen-on-port.js
