FROM node:6.11.2

# Set the environment to the application server
ENV EASER_USERS=/content/users.yml
ENV EASER_PORT=3002
ENV EASER_USE_PDMS="true"
#ENV PDMS_NATS_URI="nats://demo.nats.io:4222"
ENV PDMS_NATS_URI="nats://localhost:4222"
ENV EASER_VIEWSPATH=/content/views/
ENV EASER_CONTENTPATH_PUBLIC=/content/public/
ENV EASER_CONTENTPATH_PRIVATE=/content/private/
ENV EASER_RESTAPIPATH=/content/rest-api/services
ENV EASER_AUTH_SUCCESS_REDIRECT="/private/"
ENV EASER_AUTH_FAILURE_REDIRECT="/login"

# Websocket topics related config parameters
ENV WSSERVER_FORWARD_TOPICS="true"
ENV WSSERVER_FORWARDER_EVENT="message"
ENV WSPDMSGW_INBOUND_TOPICS="speak,hear,multimedia,presentation"
ENV WSPDMSGW_OUTBOUND_TOPICS="hear"

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
