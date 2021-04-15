FROM docker.io/nghyjohn/jenkins-agent-maven:latest
USER root
RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo

RUN echo $'[base] \n\
name            = CentOS-7 \n\
baseurl         = http://ftp.heanet.ie/pub/centos/7/os/x86_64/ \n\
enabled         = 1 \n\
gpgcheck        = 1 \n\
gpgkey=http://ftp.heanet.ie/pub/centos/7/os/x86_64/RPM-GPG-KEY-CentOS-7' > /etc/yum.repos.d/base.repo

RUN ls -al /etc/yum.repos.d/
RUN yum install -y glibc e2fsprogs krb5-libs openssl unixODBC unixODBC-devel
RUN ACCEPT_EULA=Y yum install -y mssql-tools
USER 1001
