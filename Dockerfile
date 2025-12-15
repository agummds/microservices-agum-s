# Menggunakan Node.js LTS
FROM node:18-alpine

# Direktori kerja di container
WORKDIR /app

# Copy package.json dan lock file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh source code
COPY . .

# Expose port aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]