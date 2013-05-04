#!/usr/bin/env bash

comp(){
  composite -gravity center \( ${size}x${size}/"$1".png -resize 50% \) \
   ${size}x${size}/places/folder.png ${size}x${size}/places/folder-"$2".png
}

for size in 12 16 20 22 24 32 36 48 64 72 96 128 192; do
   # replace default logo with Arch Linux's
   #rsvg-convert -w ${size} -h ${size} "${srcdir}/symbol.svg" \
   # -o "${size}x${size}/places/start-here.png"
   # create icon for category "Education"
   ln -s "../status/dialog-information.png" \
    "${size}x${size}/categories/applications-science.png"

   # create xdg-folders
   comp apps/internet-web-browser publicshare
   comp actions/go-down download
   comp actions/document-properties templates
   comp mimetypes/audio-x-generic music
   comp mimetypes/image-x-generic pictures
   comp mimetypes/video-x-generic videos
   comp mimetypes/x-office-document documents
done
