#!/usr/bin/
    script {
        dir("server") {
sh script: """#!/bin/bash
set +x
cat <<EOT >> Dockerfile
FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm i --save --legacy-peer-deps
CMD [ "yarn", "serve" ]
EXPOSE ${PORT}
EOT"""
    }
}