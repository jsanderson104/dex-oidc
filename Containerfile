# Start directly from the official pre-compiled Dex image
FROM ghcr.io/dexidp/dex:v2.41.1

# Copy your local configuration file into the container's expected path
COPY config.yaml /etc/dex/config.yaml

# Copy your FreeIPA root CA certificate so Dex can establish a secure LDAPS connection
# (Ensure this matches the 'rootCA' path you specified in your config.yaml)
#COPY ca.crt /etc/dex/certs/ca.crt
EXPOSE 5556
