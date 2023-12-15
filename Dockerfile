# Use a lightweight web server image
FROM nginx:alpine

# Copy the website files to the default Nginx public directory
COPY . /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
