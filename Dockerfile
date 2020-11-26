FROM alpine:edge
RUN apk add yarn

WORKDIR /usr/src/app
COPY . .

RUN yarn install --frozen-lockfile

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
