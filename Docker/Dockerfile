FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# Setup Program
RUN apt-get update &&\ 
    apt-get -y upgrade &&\
    mkdir -p /run/sshd &&\
    apt-get install -y sudo\
                        vim\
                        unzip\
                        nano\ 
                        wget\ 
                        net-tools\ 
                        git\
                        openssh-server

RUN apt-get install -y sox\
	                ffmpeg\
	                libcairo2\
	                libcairo2-dev\
	                texlive-full

# User Setup
ENV PASSWORD "Hosting"

RUN useradd -ms /bin/bash -d /home/Hosting Hosting&&\
    usermod -aG sudo Hosting

RUN mkdir /home/Hosting/workspace &&\
    chmod 777 /home/Hosting/workspace

WORKDIR /home/Hosting/workspace
RUN ssh-keygen -A

CMD echo "Hosting":$PASSWORD | chpasswd && /usr/sbin/sshd -D