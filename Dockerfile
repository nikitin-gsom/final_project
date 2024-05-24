FROM ubuntu:22.04 
MAINTAINER Dmitrii Nikitin 
RUN apt-get update -y 
COPY . /opt/gsom_predictor
WORKDIR /opt/gsom_predictor
RUN apt install -y python3-pip 
RUN pip3 install -r requirements.txt 
CMD python3 app.py