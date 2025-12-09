# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory dalam container
WORKDIR /app

# Menyalin seluruh source code ke dalam container
COPY . .

# Menentukan agar aplikasi berjalan dalam mode production 
# dan menggunakan host database bernama "item-db"
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies hanya untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080 untuk aplikasi
EXPOSE 8080

# Menjalankan aplikasi ketika container diluncurkan
CMD ["npm", "start"]
