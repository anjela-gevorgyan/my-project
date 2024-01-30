# Use an official nginx runtime as a parent image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 80

# Define the default command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
