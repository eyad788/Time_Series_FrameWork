FROM python:3.9.18 as base
LABEL Name="Data-Science-internship-2024" 
LABEL maintainer="Eventum Data Science Team" 
LABEL version="1.0" 
COPY ./requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#HFDS Client Install for DVC
RUN apt update
RUN apt list --upgradable
RUN apt install -y default-jre
RUN cd /home && wget https://archive.apache.org/dist/hadoop/core/hadoop-2.7.0/hadoop-2.7.0.tar.gz \
    && tar -xzf hadoop-2.7.0.tar.gz \
    && mv hadoop-2.7.0 hadoop \
    && rm hadoop-2.7.0.tar.gz
ENV ARROW_LIBHDFS_DIR=/home/hadoop/lib/native
ENV HADOOP_HOME="/home/hadoop"
ENV HADOOP_USER_NAME="hdfs"
ENV JAVA_HOME="/usr/"
RUN echo 'export CLASSPATH=`/home/hadoop/bin/hadoop classpath --glob`' >> /root/.bashrc
RUN pip install dvc[ssh,hdfs]==2.9.5
RUN pip install fsspec==2022.5.0

