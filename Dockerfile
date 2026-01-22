FROM nginx:alpine

# Copy teleprompter app to nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (will be mapped to 9900 externally)
EXPOSE 80

# nginx runs in foreground by default in official image
CMD ["nginx", "-g", "daemon off;"]
