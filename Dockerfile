FROM jupyter/tensorflow-notebook

USER root

RUN apt-get update
RUN apt-get install build-essential portaudio19-dev python3.10-dev -y
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt