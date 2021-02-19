FROM node:current-alpine3.13

# Create app dir
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app

# Install deps
RUN apk update && apk upgrade && apk add git



# If building for production:
# RUN npm install --only=production
COPY . /usr/src/nuxt-app/
RUN npm install

ENV HOST 0.0.0.0
EXPOSE 3000

# Start command
CMD [ "npm", "run", "dev" ]
