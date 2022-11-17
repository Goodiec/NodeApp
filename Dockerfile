FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json app.js ./
RUN npm install

EXPOSE 3000
CMD ["node", "app.js"]