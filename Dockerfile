ARG SPARK_VERSION
ARG SPARK_RELEASE
ARG UBUNTU_BASE_IMAGE
ARG HADOOP_HIVE_BASE_IMAGE

FROM ubuntu:$UBUNTU_BASE_IMAGE AS downloader


ARG OPENJDK_8_HEADLESS
RUN apt-get update && apt-get install -y --no-install-recommends\
 wget\
 unzip\
 ca-certificates\
 git\
 openjdk-8-jdk-headless=$OPENJDK_8_HEADLESS

 WORKDIR /tmp
 