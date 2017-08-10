FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl apt-transport-https locales

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/msprod.list

ENV ACCEPT_EULA=Y 

RUN apt-get update && apt-get install -y mssql-tools unixodbc-dev

RUN locale-gen en_US.utf8 && update-locale
