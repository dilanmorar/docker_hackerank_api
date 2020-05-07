# using ubuntu 20.04 base image
FROM ubuntu:20.04

# going to the api folder
WORKDIR /home/Hackerank_basic_api

# copying everything into working directory
COPY . .

# updating the sources and installing python and pip
RUN apt-get update && \
apt-get install -y python3 && \
apt-get install -y python3-pip

# installing dependencies
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3.8"]

CMD ["app.py"]
