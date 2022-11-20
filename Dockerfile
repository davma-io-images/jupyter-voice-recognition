ARG IMAGE

FROM ${IMAGE} as parent

USER root

RUN apt-get update
RUN apt-get install build-essential portaudio19-dev python3.10-dev -y
ADD requirements.txt requirements.txt
#--Edit requirements.txt to add or update python modules--
RUN pip install -r requirements.txt