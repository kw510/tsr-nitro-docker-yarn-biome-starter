## Builder is on the CI. We copy in the built output.
FROM node:26-alpine AS runner

WORKDIR /app

ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000

COPY --chown=node:node .output ./.output

USER node

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]