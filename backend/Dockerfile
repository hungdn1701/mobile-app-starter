FROM node:20-alpine
WORKDIR /app
RUN npm install -g json-server@0.17.4
COPY db.json .
EXPOSE 3000
CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "3000"]
