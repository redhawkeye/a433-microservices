#!/bin/bash

# perintah untuk build image karsajob:latest dari Dockerfile
echo "[+] Build karsajob:latest image"
docker build -t ghcr.io/redhawkeye/karsajob:latest .
echo

# perintah untuk login ke github container registry
echo "[+] Login ke github container registry"
echo $CR_PAT | docker login ghcr.io -u redhawkeye --password-stdin
echo

# perintah untuk mengunggah image ke github container registry
echo "[+] Mengunggah container image ke github container registry"
docker push ghcr.io/redhawkeye/karsajob:latest
echo
