FROM jenkins/jenkins:latest-jdk11
USER root 
RUN apt-get update && apt-get install -y lsb-release && \
    curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc https://download.docker.com/linux/debian/gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.asc] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && apt-get install -y docker-ce-cli 

USER jenkins 
RUN jenkins-plugin-cli --plugins "blueocean:1.25.5 docker-workflow:1.28"

FROM python:3.8-slim-buster

WORKDIR /app/ml-backend

RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6

COPY requirement.txt requirement.txt
RUN pip3 install -r requirement.txt 

COPY . . 

CMD ["python3", "app.py"] 