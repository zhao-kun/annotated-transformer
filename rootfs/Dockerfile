FROM nvidia/cuda:12.0.1-base-ubuntu22.04-python3.10 

ADD requirements.txt  .

RUN pip install -r requirements.txt

RUN pip install ipympl==0.9.2 jupyterlab==3.4.8 matplotlib==3.6.1 

WORKDIR /workspace

COPY . /workspace

RUN make notebook

ENV SHELL=/bin/bash

ADD rootfs/entrypoint.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

