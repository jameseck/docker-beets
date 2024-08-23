FROM docker.io/python:3.12-slim
ADD requirements.txt /opt/requirements.txt
RUN \
    apt update && \
    apt install -y libchromaprint-tools --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm /usr/lib/python3*/EXTERNALLY-MANAGED || /bin/true && \
    pip3 install --upgrade pip && \
    pip3 install -r /opt/requirements.txt
