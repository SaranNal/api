# FROM 170981889969.dkr.ecr.us-east-1.amazonaws.com/reblie-api-base:latest
# FROM node-base2:latest
FROM 729047448122.dkr.ecr.us-east-1.amazonaws.com/saran-node-base-image:latest
WORKDIR /app
COPY . .

COPY ./api-nginx.conf /etc/nginx/nginx.conf

RUN npm install

EXPOSE 80 5000

RUN chmod +x entrypoint.sh

#CMD [ "npm", "start" ]
ENTRYPOINT ["./entrypoint.sh"]
