# Menggunakan image Node.js versi 18 berbasis Alpine Linux
# Alpine dipilih karena ringan dan cepat untuk container
FROM node:18-alpine

# Menentukan direktori kerja di dalam container
# Semua perintah selanjutnya akan dijalankan di folder ini
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke container
# Langkah ini dipisahkan agar Docker dapat memanfaatkan layer cache
COPY package*.json ./

# Menginstall seluruh dependency Node.js yang dibutuhkan aplikasi
RUN npm install

# Menyalin seluruh source code aplikasi ke dalam container
COPY . .

# Mengekspos port 3001 yang digunakan oleh shipping-service
EXPOSE 3001

# Perintah default untuk menjalankan aplikasi ketika container dijalankan
CMD ["npm", "start"]