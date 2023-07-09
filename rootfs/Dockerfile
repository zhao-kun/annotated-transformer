FROM zhaokundev/cuda:12.0.1-base-ubuntu22.04-python3.10 

ADD requirements.txt  .

RUN pip install -r requirements.txt

RUN pip install ipympl==0.9.2 jupyterlab==3.4.8 matplotlib==3.6.1 

# Known issue, change spacy to 3.2.6 https://github.com/harvardnlp/annotated-transformer/issues/112
RUN pip install -q torchdata==0.3.0 torchtext==0.12 spacy==3.2.6 altair GPUtil
RUN python -m spacy download de_core_news_sm
RUN python -m spacy download en_core_web_sm

WORKDIR /workspace

COPY . /workspace

RUN make notebook

ENV SHELL=/bin/bash

ADD rootfs/entrypoint.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

