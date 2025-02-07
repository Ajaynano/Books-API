FROM node:14-alpine
WORKDIR /app
COPY package.json package-lock.json /app/
COPY . /app/
RUN npm install
EXPOSE 5000
CMD [ "node", "app.js" ]