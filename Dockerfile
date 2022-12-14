FROM python:3.10

RUN pip install ansible botocore boto3 awscli
RUN wget --quiet -O packer.zip https://releases.hashicorp.com/packer/1.8.5/packer_1.8.5_linux_amd64.zip && \
    unzip packer.zip && \
    mv packer /usr/bin && \
    rm packer.zip
