FROM node:24-alpine AS node-pnpm

# recommendation - use the same major version like on localhost
RUN npm i -g pnpm@11

# Stage 1
FROM node-pnpm AS build-stage

WORKDIR /frontend-app
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
RUN pnpm install
COPY . .

#ARG VITE_API_BASE_URL
#ENV VITE_API_BASE_URL=$VITE_API_BASE_URL

ARG VITE_BACKEND_URL
ENV VITE_BACKEND_URL=${VITE_BACKEND_URL}

ARG VITE_AUTH
ENV VITE_AUTH=${VITE_AUTH}

ARG VITE_AUTH_OFF_USERNAME
ENV VITE_AUTH_OFF_USERNAME=${VITE_AUTH_OFF_USERNAME}

ARG VITE_AUTH0_DOMAIN
ENV VITE_AUTH0_DOMAIN=${VITE_AUTH0_DOMAIN}

ARG VITE_AUTH0_CLIENT_ID
ENV VITE_AUTH0_CLIENT_ID=${VITE_AUTH0_CLIENT_ID}

ARG VITE_AUTH0_AUDIENCE
ENV VITE_AUTH0_AUDIENCE=${VITE_AUTH0_AUDIENCE}

# run script "build" from project "frontend"
# creates dist
RUN pnpm run build

# Stage 2
FROM nginx:1.23.4-alpine

COPY --from=build-stage /frontend-app/dist /usr/share/nginx/html
# if we have the application, we don't need to add test-page.html separately like this
#COPY public/test-page.html /usr/share/nginx/html/

# port on which nginx runs
EXPOSE ${NGINX_DOCKER_PORT} ${NGINX_DOCKER_PORT_HTTPS}

CMD nginx -g 'daemon off;'
