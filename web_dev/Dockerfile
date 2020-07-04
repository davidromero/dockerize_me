FROM codercom/code-server:latest

USER root

ENV PASSWORD='password'

RUN sudo sudo apt update

RUN sudo curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get install -y nodejs

RUN node --version

RUN npm --version

EXPOSE 8080
EXPOSE 3000
