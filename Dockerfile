FROM node:current

LABEL version=1.0


RUN git clone https://github.com/risvan-lynxx/zen_bot.git /iris/Iris-md
WORKDIR /iris/Iris-md


RUN apt update && apt install -y ffmpeg libwebp-dev && apt clean

RUN npm install

CMD ["node", "index.js"]
