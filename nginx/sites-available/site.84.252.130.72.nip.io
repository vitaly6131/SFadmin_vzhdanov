server {
    listen 80;
    server_name site.84.252.130.72.nip.io;
    root /var/www/site.84.252.130.72.nip.io;

    index index.html index.htm index.php;

    location / {
        try_files $uri $uri/ =404;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass 127.0.0.1:9000;
     }

    location ~ /\.ht {
        deny all;
    }

}
