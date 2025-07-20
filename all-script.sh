# define folder certbot
sudo mkdir -p certbot/www/.well-known/acme-challenge # primary
sudo mkdir -p certbot/conf

# run manual generate certbot
sudo docker run --rm \
  -v "$(pwd)/certbot/www:/var/www/certbot" \
  -v "$(pwd)/certbot/conf:/etc/letsencrypt" \
  certbot/certbot certonly \
  --webroot \
  --webroot-path=/var/www/certbot \
  --email email@kamu.com \
  --agree-tos \
  --no-eff-email \
  -d domainkau.com

# run manual delete certbot spesific domain
docker run --rm -v $(pwd)/certbot/conf:/etc/letsencrypt certbot/certbot delete --cert-name domainkau.com
