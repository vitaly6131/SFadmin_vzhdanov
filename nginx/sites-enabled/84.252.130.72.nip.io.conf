server {
     listen 80;
     server_name 84.252.130.72.nip.io;
 if ($uri !~ /page.html){
        return 301 https://$host$request_uri;
        } 
     location / {
        proxy_pass http://localhost:8080;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Server $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Server-Address  $server_addr;
     }
}
server {
    listen 443 ssl; # managed by Certbot
    server_name 84.252.130.72.nip.io;
    ssl_certificate /etc/letsencrypt/live/84.252.130.72.nip.io/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/84.252.130.72.nip.io/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot
location / {
        proxy_pass https://localhost:8081;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Server $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Server-Address  $server_addr;
    }
}







