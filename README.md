# Jupyter-voice-recognition notebook

</br>

[![Build jupyter-voice-recognition](https://github.com/davma-io-images/jupyter-voice-recognition/actions/workflows/jupyter-voice-recognition.yml/badge.svg)](https://github.com/davma-io-images/jupyter-voice-recognition/actions/workflows/jupyter-voice-recognition.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/davma/jupyter-voice-recognition?logo=docker&logoColor=white)

## 1. Features

This image is a modification of the official [Jupyter Notebook Deep Learning Stack](https://hub.docker.com/r/jupyter/tensorflow-notebook) image. 

The following components have been added:

| Python Components |
| ---|
| pyaudio==0.2.12 |
| pydub==0.25.1 |
| ffmpeg-python==0.2.0 |

## 2. Requirements

1. [Docker](https://docs.docker.com/get-docker/)

## 3. Docker pull

You can download image from [Docker Hub](https://hub.docker.com/r/davma/jupyter-ultimate) with the following command.

````
docker pull davma/jupyter-voice-recognition:latest
````

## 4. Deploy with Docker Compose

Use docker compose for persistent data in your local directory. You will have access from Jupyter to the directory from which you deploy this docker compose.

````
services:
  jupyter-ultimate:
    container_name: jupyter-ultimate
    image: davma/jupyter-voice-recognition:latest
    pull_policy: always
    volumes:
      - "./:/home/jovyan"
    ports:
     - "8888:8888"
    restart: always
````

## 5. Access to Jupyter-voice-recognition notebook

Visiting ``http://<hostname>:8888/?token=<token>`` in a browser loads JupyterLab, where:

- Hostname is the name of the computer running Docker.
- Token is the secret token printed in the console.

## 6. Image build

You can run the image build with the following commands

````
git clone https://github.com/davma-io-images/jupyter-voice-recognition.git
cd jupyter-voice-recognition/
docker build -t jupyter-voice-recognition .
````

## 7.Documentation and guides

[Jupyter Notebook](https://jupyter.org/)

[Jupiter Ansible](https://github.com/ansible/ansible-jupyter-kernel)
