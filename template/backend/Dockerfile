FROM node:22-alpine AS node-pnpm

RUN npm i -g pnpm

FROM node-pnpm AS dependencies

WORKDIR /backend-app
COPY package.json pnpm-lock.yaml ./
RUN pnpm install

FROM node-pnpm AS build

WORKDIR /backend-app
COPY . .
COPY --from=dependencies /backend-app/node_modules ./node_modules
RUN pnpm build
RUN pnpm prune --prod

FROM node-pnpm AS deploy

WORKDIR /backend-app
COPY --from=build /backend-app/dist/ ./dist/
COPY --from=build /backend-app/node_modules ./node_modules
# adresarova struktura pre uploading suborov (skor specificke pre danu app-ku)
RUN mkdir -p /backend-app/app-files/uploaded
RUN mkdir -p /backend-app/app-files/x-files

# na backend sa pripajame z frontend containera, netreba nam tento EXPOSE
# 3.6.2024 z proxy sa pripajame na backend cez tento port
EXPOSE ${NODE_DOCKER_PORT}

CMD ["node", "dist/main.js"]
