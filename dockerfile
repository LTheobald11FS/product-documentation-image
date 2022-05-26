FROM node:latest
LABEL org.opencontainers.image.authors="Lee.Theobald@11fs.com"

# Install Prism's CLI
RUN yarn global add @stoplight/prism-cli
COPY contract.yaml /app/
WORKDIR /app/
CMD prism mock contract.yaml
