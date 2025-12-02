#!/bin/bash
shopt -s nullglob

# SatellaOS logo dizinini oluştur
sudo mkdir -p /usr/share/SatellaOS/logo/

# Logo dosyalarını kopyala
sudo cp ~/git-script/logo/*.{asc,png} /usr/share/SatellaOS/logo/

# Dosya izinlerini ayarla
sudo chmod 655 /usr/share/SatellaOS/logo/*

# Kullanıcı Pictures klasörüne sembolik link oluştur
ln -s /usr/share/SatellaOS/logo "$(xdg-user-dir PICTURES)/logo" 2>/dev/null

echo "✔ Logo başarıyla yüklendi!"
