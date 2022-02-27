FROM node:14-alpine

WORKDIR app

#Dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install

#Build
COPY . .
RUN npm run build

#Application
USER node
EXPOSE 4000

CMD ["node", "dist/main.js"]

