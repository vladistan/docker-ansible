FROM python:3.10

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
RUN wget --quiet -O packer.zip https://releases.hashicorp.com/packer/1.8.5/packer_1.8.5_linux_amd64.zip && \
    unzip packer.zip && \
    mv packer /usr/bin && \
    rm packer.zip
