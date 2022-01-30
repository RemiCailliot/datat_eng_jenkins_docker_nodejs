# pull official base image
FROM node:16.13.2
RUN mkdir /app
# set working directory
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /node_modules/.bin:$PATH
COPY package.json /app
COPY package-lock.json /app



RUN npm install -g --silent
COPY . /app
# start app
CMD ["npm", "start"]


