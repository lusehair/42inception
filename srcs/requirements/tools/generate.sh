openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out cert.pem -keyout key.pem -subj "/C=FR/ST=Paris/CN=lusehair"
chmod 777 key.pem 
chmod 777 cert.pem

echo "Copy SSL keys in ftp/nginx/phpmyadmin folders ...\n"
cp key.pem ../nginx/srcs; cp cert.pem ../nginx/srcs
cp key.pem ../wordpress/srcs; cp cert.pem ../wordpress/srcs

echo "Copy Done !" 