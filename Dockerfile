FROM node:14.15.1-alpine

RUN apk add --no-cache --virtual .gyp python make g++\
	&& npm install && npm install n8n -g --unsafe-perm \

CMD ["n8n", "start"]

EXPOSE 5678/tcp
