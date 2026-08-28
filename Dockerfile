FROM node:22-alpine
#here node version22 install and alpine is a linux system where it install and run
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node","index"]

#first we will build image so run -- docker build -t app .  (app is docker image name)
#second when we will run container create -- docker run -it --rm -p 8080:8080 app 
#docker compose file is used where multiple services like nodejs app, mongodb,redis all will
# run in single command and all wil written in single file there is no need to run every services command
# we can run only one command and all service run --> docker compose up -d
# (d means services chalti rahengi background me bhale ham terminal band kr de)

#short command to create repo without go in github -- gh repo create
