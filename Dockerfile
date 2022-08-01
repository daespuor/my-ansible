FROM sickcodes/docker-osx:latest
WORKDIR /usr/local/bin
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install ansible
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]