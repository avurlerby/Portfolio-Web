#!/bin/bash
 
echo "Print working Directory"    
pwd
cd ./Server
set +x
cat <<EOT >> Dockerfile
FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm i --save --legacy-peer-deps
CMD [ "npm", "start" ]
EXPOSE ${PORT}
EOT"""
    }
}
