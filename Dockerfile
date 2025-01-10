FROM ubuntu:22.04

# Install required dependencies
RUN apt-get update && apt-get install -y sudo curl

# Install Orca-CLI
RUN curl -sfL 'https://raw.githubusercontent.com/orcasecurity/orca-cli/main/install.sh' | bash