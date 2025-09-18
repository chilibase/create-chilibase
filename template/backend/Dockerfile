FROM node:22-alpine AS node-pnpm

RUN npm i -g pnpm

FROM node-pnpm AS build

WORKDIR /backend-app
COPY . .
RUN pnpm install
# build dist in common
RUN pnpm --prefix common run build
# run script "build" from project "backend"
# build dist in backend
RUN pnpm --prefix backend run build-tsc-b
# removes devDependencies from node_modules (run from root (across all projects) does not work)
#RUN pnpm prune --prod
#RUN pnpm prune --prod --filter ./common
#RUN pnpm prune --prod --filter ./backend

FROM node-pnpm AS deploy

WORKDIR /backend-app
COPY --from=build /backend-app/node_modules ./node_modules
COPY --from=build /backend-app/common/package.json ./common/package.json
COPY --from=build /backend-app/common/node_modules ./common/node_modules
COPY --from=build /backend-app/common/dist ./common/dist
COPY --from=build /backend-app/backend/package.json ./backend/package.json
COPY --from=build /backend-app/backend/node_modules ./backend/node_modules
COPY --from=build /backend-app/backend/dist ./backend/dist
# adresarova struktura pre uploading suborov (skor specificke pre danu app-ku)
RUN mkdir -p /backend-app/backend/app-files/uploaded
RUN mkdir -p /backend-app/backend/app-files/x-files

# na backend sa pripajame z frontend containera, netreba nam tento EXPOSE
# 3.6.2024 z proxy sa pripajame na backend cez tento port
EXPOSE ${NODE_DOCKER_PORT}

CMD ["node", "backend/dist/main.js"]
