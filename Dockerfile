FROM node:8
WORKDIR /ScheMe
# Install app dependencies
# A wildcard is used to ensure both package.json AND package lock.json are copied
COPY package*.json ./
RUN npm install
# Add your source files
COPY . .
EXPOSE 5000
CMD ["npm", "start"]