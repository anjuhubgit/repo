FROM node:14 AS nodework
WORKDIR /app
COPY package.json .
RUN sudo npm install
COPY . .
RUN sudo npm run build

FROM nginx
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=nodework /app/build .
ENTRYPOINT ["nginx","-g","daemon off;"]
