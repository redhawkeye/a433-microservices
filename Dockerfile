FROM node:18-alpine
WORKDIR /src
COPY ./package*.json ./
COPY ./index.js ./
COPY ./startup.sh ./
ENV NODE_ENV=production
RUN apk add --no-cache bash~=5.2 && \
npm ci
ENTRYPOINT ["bash", "startup.sh"]