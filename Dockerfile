FROM nginx:alpine

# Install openssl for certificate generation
RUN apk add --no-cache openssl

# Generate self-signed certificate
RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 3650 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=DE/ST=Local/L=Local/O=Teleprompter/CN=localhost"

# Copy nginx config with HTTPS
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy teleprompter app to nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose both HTTP and HTTPS ports
EXPOSE 80 443

# nginx runs in foreground by default in official image
CMD ["nginx", "-g", "daemon off;"]
