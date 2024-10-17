# Use your existing image from Docker Hub as the base image
FROM yusufkayatr/dating-app-test:latest

# Set the working directory (if necessary)
WORKDIR /usr/src/app

# Install any additional dependencies (if necessary)
RUN yarn install

# Set environment variables
ENV EXPO_NO_BABEL=true

# Expose necessary ports
EXPOSE 19000
EXPOSE 19006
EXPOSE 19001

# Start the app with the desired options
CMD ["yarn", "start", "--web", "--non-interactive"]
