FROM node:latest

WORKDIR /usr/src/app

COPY package.json package.json

RUN npm install 
# npm ci --only=production

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
