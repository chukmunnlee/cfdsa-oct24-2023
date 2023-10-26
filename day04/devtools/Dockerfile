FROM node:20

WORKDIR /app

COPY . .

RUN npm ci

ENV PORT=3000 INSTANCE_NAME="dov-bear" INSTANCE_HASH="abc123"

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
	CMD curl -f localhost:${PORT}/healthz

EXPOSE ${PORT}

ENTRYPOINT node main.js
