#!/bin/bash

# Postavljanje Node verzije
export NODE_VERSION=18

# Postavljanje environment varijabli
export CI=false
export VITE_EMAILJS_SERVICE_ID=service_mo3g4jp
export VITE_EMAILJS_TEMPLATE_ID=template_3knfq2b
export VITE_EMAILJS_PUBLIC_KEY=gD_VOaKn7S_KiVrPx

# Instalacija zavisnosti
npm install

# Build
npm run build

# Kreiranje _redirects fajla ako ne postoji
if [ ! -f "dist/_redirects" ]; then
  echo "/* /index.html 200" > dist/_redirects
fi

echo "Build završen!" 