# Menggunakan image Node.js versi 18 berbasis Alpine Linux
FROM node:18-alpine

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke container
COPY package*.json ./

# Menginstall seluruh dependency Node.js yang dibutuhkan aplikasi
RUN npm install

# Menyalin seluruh source code aplikasi ke dalam container
COPY . .

# Mengekspos port 3001 yang digunakan oleh shipping-service
EXPOSE 3001

# Perintah default untuk menjalankan aplikasi ketika container dijalankan
CMD ["npm", "start"]