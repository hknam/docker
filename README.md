Docker Image Generate
=====================

Prerequisites
---------------

>**Docker install:**
>- https://docs.docker.com/engine/installation/

>**Docker user guide:**
>- https://docs.docker.com/engine/userguide/

# Build

>docker build &lt;options&gt; &lt;/path/to/Dockerfile&gt; --tag &lt;REPOSITORY:TAG&gt; **.**

## Bash commands in Dockerfile
>- RUN /bin/bash -c " "

## Connect to host port in Dockerfile
>- EXPOSE [port]

# RUN Docker image
>- docker run -i -t --name &lt;containterName&gt; -p [host]:[container] &lt;REPOSITORY:TAG&gt; /bin/bash
