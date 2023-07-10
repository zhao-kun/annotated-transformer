
Code for The Annotated Transformer blog post:

http://nlp.seas.harvard.edu/annotated-transformer/


# Introduction
The repository was forked from [harvardnlp/annotated-transformer](https://github.com/harvardnlp/annotated-transformer). The original README.md is [here](README.original.md).

I enhanced the notebook to support the following features:

- Support to run notebook in the Docker container.

- Add Chinese code interpretation for code snapshot in the notebook.

# How build docker image
Run the following command to build docker image:

```bash
docker build -t annotated-transformer  -f rootfs/Dockerfile .
```
or 
```bash
./build_image.sh
```


# How to run notebook in docker container

Run the following command to start a docker container:

```bash
./start.sh
```
or

```bash
docker run -d --gpu 1 --rm -p 8888:8888 annotated-transformer
```

Then, open the browser and input the following url: `http://127.0.0.1:8888/lab`

