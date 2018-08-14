FROM node:6.11.2
#FROM node:8.2.0

# You can build it with the following command:
# docker build --no-cache --rm --build-arg HTTP_PROXY=$HTTP_PROXY --network=host -t /rcpv:latest .

#LABEL Description="rcpv server image" Vendor="Tamás Benke" Version="1.0"

# Set the environment to the application server
ENV EASER_USERS=/content/users.yml
ENV EASER_PORT=3006
ENV EASER_USE_PDMS="true"
ENV PDMS_NATS_URI="nats://demo.nats.io:4222"
ENV EASER_VIEWSPATH=/content/views/
ENV EASER_CONTENTPATH_PUBLIC=/content/public/
ENV EASER_CONTENTPATH_PRIVATE=/content/private/
ENV EASER_RESTAPIPATH=/content/rest-api/services

# Expose the server's port to access to the content provided
EXPOSE $EASER_PORT

# COPY the content and credentials file
COPY ./dist/ /content/

# Install easer application server in global mode
RUN echo "--------------------------------------------------------"
RUN env
RUN echo "--------------------------------------------------------"
RUN npm install -g easer

# Start the server
ENTRYPOINT easer-server server
