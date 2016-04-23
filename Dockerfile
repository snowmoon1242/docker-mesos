FROM snowmoon6467/base_ubuntu:14.04

MAINTAINER snowmoon6467

### Install mesos from mesosphere
# Set up key
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
# Add the repository
RUN DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]') \
&& CODENAME=$(lsb_release -cs) \
&& echo "deb http://repos.mesosphere.io/${DISTRO} ${CODENAME} main" | \
tee /etc/apt/sources.list.d/mesosphere.list
RUN apt-get -y update
#Install mesos
RUN apt-get -y install mesos
#Set mesos env
ENV MESOS_WORK_DIR=/var/lib/mesos
ENV MESOS_LOG_DIR=/var/log/mesos
ENV MESOS_LOGGING_LEVEL=INFO
