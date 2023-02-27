FROM ubuntu

RUN apt update 

RUN apt install wget curl -y

RUN wget https://github.com/rebuy-de/aws-nuke/releases/download/v2.20.0/aws-nuke-v2.20.0-linux-amd64.tar.gz 

RUN tar -xvzf aws-nuke-v2.20.0-linux-amd64.tar.gz && mv aws-nuke-v2.20.0-linux-amd64  aws-nuke 

RUN chmod 777 aws-nuke 

RUN cp aws-nuke /usr/bin/

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 

RUN apt install unzip

RUN unzip awscliv2.zip 

RUN ./aws/install 

RUN rm -rf awscliv2.zip aws aws-nuke aws-nuke-v2.20.0-linux-amd64.tar.gz
