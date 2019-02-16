FROM ubuntu:18.04
LABEL Maintainer="Xinsong Li <lixinso@gmail.com>"

RUN apt update -y

RUN apt install -y python3 
RUN apt install -y python3-pip
RUN python3 -m pip install --upgrade pip


RUN DEBIAN_FRONTEND=noninteractive apt install -y python3-notebook

RUN apt install -y ipython3
RUN pip3 install  jupyter

RUN mkdir /mydir
VOLUME ["/mydir"]
WORKDIR /mydir


#CMD jupyter notebook  --allow-root --ip 0.0.0.0

