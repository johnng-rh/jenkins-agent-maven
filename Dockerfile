FROM docker.io/nghyjohn/jenkins-agent-maven:latest
USER root

RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo
RUN ACCEPT_EULA=Y yum install -y mssql-tools unixODBC-devel
USER 1001
