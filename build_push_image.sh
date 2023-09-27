#!/bin/bash

# perintah untuk build image item-app:v1 dari Dockerfile
echo "[+] Build item-app image"
docker build -t item-app:v1 .
echo

# perintah untuk melihat semua image yang ada di dalam docker
echo "[+] Menampilkan list container image"
docker images -a
echo

# perintah untuk merubah tag/nama image container
echo "[+] Merubah nama container dari item-app:v1 menjadi ghcr.io/redhawkeye/item-app:v1"
docker tag item-app:v1 ghcr.io/redhawkeye/item-app:v1
echo

# perintah untuk login ke github container registry
echo "[+] Login ke github container registry"
echo $CR_PAT | docker login ghcr.io -u redhawkeye --password-stdin
echo

# perintah untuk mengunggah image ke github container registry
echo "[+] Mengunggah container image ke github container registry"
docker push ghcr.io/redhawkeye/item-app:v1
echo