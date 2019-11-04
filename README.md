# letsencrypt-docker-route-53

    docker run -it --rm --name certbot -v "/etc/letsencrypt:/etc/letsencrypt" \
      -v "/var/log/letsencrypt:/var/log/letsencrypt" \
      -e EMAIL=amdmin@example.com \
      -e DOMAIN=example.com \
      -e AWS_ACCESS_KEY_ID=xxxxxxxxx \
      -e AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxx \
      amtindia/certbot-route-53
      
  Certificates will store in the path /etc/letsencrypt/live/domain-name/
