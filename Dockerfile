# syntax untuk menggunakan spesifik container image
FROM node:14-alpine

# syntax untuk set folder kerja
WORKDIR /app

# syntax untuk meng copy file/folder ke dalam container
COPY . .

# syntax untuk set environment di dalam container
ENV NODE_ENV=production DB_HOST=item-db

# syntax untuk install dependensi dan build aplikasi di dalam container
RUN npm install --production --unsafe-perm && npm run build

# syntax untuk meng expose port container ke mesin host
EXPOSE 8080

# syntax untuk menjalankan perintah di dalam container saat startup (menjalankan aplikasi di dalam container)
ENTRYPOINT [ "npm", "start" ]