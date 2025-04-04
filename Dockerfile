FROM node:23-alpine

RUN apk add --no-cache python3 alpine-sdk

RUN --mount=type=cache,id=pnpm,target=/pnpm/store \
    pnpm install --prod --frozen-lockfile

EXPOSE 9000
CMD [ "node", "src/cobalt" ]
