FROM node:20-alpine

WORKDIR /app

# Wildcard used to copy to container "package.json" AND "package-lock.json"
COPY ./ ./

RUN yarn install
EXPOSE 3000

CMD ["node", "dist/index.js"]
