FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install curl python python-dev git python-pip vim nano zlib1g-dev libreadline-dev libbz2-dev libssl-dev && apt-get clean
RUN pip install virtualenv
RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
RUN echo 'eval "$(pyenv init -)"' >> /root/.bashrc
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> /root/.bashrc
RUN echo 'eval "$(pyenv init -)"' > /etc/profile.d/pyenv.sh
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> /etc/profile.d/pyenv.sh
ENV PATH=/root/.pyenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
root@hla537:~# vi Dockerfile
root@hla537:~# cat Dockerfile
FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install curl python python-dev git python-pip vim nano zlib1g-dev libreadline-dev libbz2-dev libssl-dev && apt-get clean
RUN pip install virtualenv
RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
RUN echo 'eval "$(pyenv init -)"' >> /root/.bashrc
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> /root/.bashrc
RUN echo 'eval "$(pyenv init -)"' > /etc/profile.d/pyenv.sh
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> /etc/profile.d/pyenv.sh

ENV TERM=xterm
ENV PATH=/root/.pyenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
