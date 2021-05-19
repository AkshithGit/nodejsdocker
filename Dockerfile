FROM ubuntu 
RUN mkdir -p /home/ubuntu/app
WORKDIR /home/ubuntu/app

COPY ["package.json","package-lock.json*", "./"]
RUN apt update 
RUN apt install nodejs -y
RUN apt install npm -y

RUN npm install 

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]
