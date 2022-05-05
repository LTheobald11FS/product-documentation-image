FROM node:latest
LABEL org.opencontainers.image.authors="Lee.Theobald@11fs.com"

# Update apt & ensure Git & the GitHub CLI are installed
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null
RUN apt-get update
RUN apt-get install -y apt-utils git gh

# Install Prism's CLI
RUN yarn global add @stoplight/prism-cli

ENV GITHUB_TOKEN=mustbepassedin
ENV GITHUB_USER=myuser
ENV GITHUB_REPO=myrepo

# Clone repository
RUN git clone https://oauth-key-goes-here@github.com/${GITHUB_USER}/${GITHUB_REPO}.git
WORKDIR ${GITHUB_REPO}
