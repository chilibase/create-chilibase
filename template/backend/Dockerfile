FROM node:24-alpine AS node-pnpm

# recommendation - use the same major version like on localhost
RUN npm i -g pnpm@11

FROM node-pnpm AS dependencies

WORKDIR /backend-app
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
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
# directory structure for uploading files (rather specific to the given app)
RUN mkdir -p /backend-app/app-files/uploaded
RUN mkdir -p /backend-app/app-files/x-files

# we connect to the backend from the frontend container, we don't need this EXPOSE
# 3.6.2024 from the proxy we connect to the backend through this port
EXPOSE ${NODE_DOCKER_PORT}

CMD ["node", "dist/main.js"]
