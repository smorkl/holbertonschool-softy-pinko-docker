# Use the latest Ubuntu as the base image
FROM ubuntu:latest

# Update APT repository and upgrade packages
RUN apt-get update && apt-get upgrade -y

# install Python3, pip3
RUN apt-get install -y python3 python3-pip


RUN rm /usr/lib/python*/EXTERNALLY-MANAGED || true

#intall Flask with pip3
RUN pip3 install flask

# instal FLask-cors with pip3
RUN pip3 install flask-cors

# set the working directory to /app
WORKDIR /app

# copy the local python script to the docker image
COPY ./api.py /app/api.py

#comand to run the Flask aplication
CMD ["python3", "api.py"]
