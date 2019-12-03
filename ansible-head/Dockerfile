FROM python:3.7
MAINTAINER "David O'Gwynn <dogwynn@lowlandresearch.com>"

RUN apt-get update && apt-get install -y openssh-server build-essential less vim net-tools

RUN mkdir /var/run/sshd
RUN echo 'root:demopassword' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

WORKDIR /ansible

RUN pip3 install ansible

CMD ["/usr/sbin/sshd", "-Dd"]

