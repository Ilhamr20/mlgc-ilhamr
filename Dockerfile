# Menggunakan Node.js versi yang sesuai (gunakan versi 18.20.5 sesuai node -v Anda)
FROM node:18.20.5 

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menentukan port yang akan digunakan oleh aplikasi
ENV PORT=8080
EXPOSE 8080

# Menyalin semua file dari direktori lokal ke dalam container
COPY . .

# Menginstal semua dependencies yang ada dalam package.json
RUN npm install

# Menentukan URL model (disesuaikan dengan URL Anda)
ENV MODEL_URL=https://storage.googleapis.com/model-buckets-test/model/model.json

# Menjalankan aplikasi
CMD [ "npm", "run", "start" ]
