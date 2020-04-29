FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y && \
    apt-get -y install openssh-server sudo

RUN useradd -ms /bin/bash remote_user  && \
##  echo "1234" | passwd remote_user && \
  mkdir /home/remote_user/.ssh && \
  chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
  chmod 600 /home/remote_user/.ssh/authorized_keys

#RUN /usr/sbin/sshd-keygen

#CMD /usr/sbin/sshd -D

#RUN apt-get -y install mysql

#RUN curl -O https://bootstrap.pypa.io/get-pip.py

#RUN python get-pip.py
