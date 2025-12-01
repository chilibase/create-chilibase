FROM node:22-alpine AS node-pnpm

RUN npm i -g pnpm

# Stage 1
FROM node-pnpm AS build-stage

WORKDIR /frontend-app
COPY package.json pnpm-lock.yaml ./
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
# ak mame aplikaciu, netreba nam pridavat test-page.html takto separatne
#COPY public/test-page.html /usr/share/nginx/html/

# port na ktorom bezi nginx
EXPOSE ${NGINX_DOCKER_PORT} ${NGINX_DOCKER_PORT_HTTPS}

CMD nginx -g 'daemon off;'
