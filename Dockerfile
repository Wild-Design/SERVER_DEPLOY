### Dockerfile - PreConfigurado 
#
# docker build -t smagarinos89/talkap-backend .
# docker push smagarinos89/talkap-backend
#
FROM node:19

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json ./

RUN npm install

COPY --chown=node:node . .
USER node

EXPOSE 3001
CMD [ "node", "index.js" ]
