FROM 729047448122.dkr.ecr.us-east-1.amazonaws.com/saran-app-base-image:latest

WORKDIR /app
COPY . .

COPY ./api-nginx.conf /etc/nginx/nginx.conf

RUN npm install

EXPOSE 80 5000

RUN chmod +x entrypoint.sh

#CMD [ "npm", "start" ]
ENTRYPOINT ["./entrypoint.sh"]
