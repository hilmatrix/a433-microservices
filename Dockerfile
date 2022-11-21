#menggunaan node versi 14
FROM node:14-alpine

# membuat dan menyalin kode ke working dir 
WORKDIR /app
COPY . .

# menentukan environment untuk aplikasi
ENV NODE_ENV=production
ENV DB_HOST=item-db

# menginstall dependencies
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080 antar container
EXPOSE 8080

# menjalankan aplikasi
CMD ["npm","start"]
