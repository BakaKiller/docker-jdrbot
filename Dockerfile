FROM node:stretch

ARG botname
ENV botname ${botname}
RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/BakaKiller/discord-jdrbot.git /var/${botname}
WORKDIR /var/${botname}
RUN npm install
RUN chmod +x jdrbot.js
ARG token
ENV token ${token}
CMD ./jdrbot.js ${token} 
