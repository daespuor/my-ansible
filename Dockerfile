FROM sickcodes/docker-osx:big-sur
USER root
COPY ./requirements.yml .
COPY ./ansible_install .
RUN chmod +x ./ansible_install && ./ansible_install
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]