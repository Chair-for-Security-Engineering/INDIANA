# Get the base Ubuntu image from Docker Hub
FROM ubuntu:20.04

# Prevent apt from opening interactive dialogues
ARG DEBIAN_FRONTEND=noninteractive

# Update apps on the base image and install needed apps and libraries
RUN apt-get update && apt-get install -y build-essential libboost-all-dev g++-multilib \
    && apt-get install -y wget \
    && apt-get install -y git

# Copy the current folder which contains the source code to the Docker image under /usr/src
COPY . /usr/src/indiana  

# Specify the working directory
WORKDIR /usr/src/indiana

# Download and install boost
RUN wget https://archives.boost.io/release/1.71.0/source/boost_1_71_0.tar.bz2 \
    && tar --bzip2 -xf boost_1_71_0.tar.bz2 \ 
    && rm boost_1_71_0.tar.bz2 \
    && cd boost_1_71_0 \
    && ./bootstrap.sh --prefix=/usr/src/indiana --with-libraries=program_options \
    && ./b2 install \
    && cd ..

# Download and install CUDD
RUN git clone https://github.com/ivmai/cudd.git \
    && cd cudd \
    && autoreconf \
    && ./configure --prefix=/usr/src/indiana --enable-shared --enable-obj \
    && make check \
    && make install 

# Use Makefile to build the source code
RUN make release

# Cache necessary links from the /lib sub-folder
RUN ldconfig /usr/src/indiana/lib

# Run the program
CMD ["./bin/release/indiana", "--config=./config/docker.json"]
