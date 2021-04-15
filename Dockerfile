FROM docker.io/nghyjohn/jenkins-agent-maven:latest
USER root
RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo
RUN ls -al /etc/yum.repos.d/
RUN ACCEPT_EULA=Y yum install -y mssql-tools unixODBC-devel --skip-broken
USER 1001
