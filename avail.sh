#!/bin/bash

# Download avail-light
wget https://github.com/availproject/avail-light/releases/download/v1.7.10/avail-light-linux-amd64.tar.gz

# Extract the downloaded tarball
tar xvzf avail-light-linux-amd64.tar.gz

# Prompt user to enter text for identity.toml file
echo "Masukkan teks untuk file identity.toml:"
read identity_text

# Create identity.toml file and write the entered text into it
echo "$identity_text" > identity.toml

echo "File identity.toml telah dibuat dengan teks yang dimasukkan."

# Read and display the contents of identity.toml file
echo "Isi dari file identity.toml:"
cat identity.toml

echo "Ketik screen -S avail"
echo "Lalu jalankan perintah: curl -sL1 avail.sh | bash"
