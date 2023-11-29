FROM jenkins/jenkins:2.346.1-jdk11
USER root
RUN apt-get update
RUN apt-get install -y apt-transport-https lsb-release ca-certificates curl gnupg software-properties-common
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
RUN chown -R jenkins:jenkins /var/jenkins_home
RUN chmod -R 755 /var/jenkins_home
RUN jenkins-plugin-cli --plugins "blueocean:1.25.5 docker-workflow:1.28"