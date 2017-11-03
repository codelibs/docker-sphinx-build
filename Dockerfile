FROM ubuntu:16.04
LABEL maintainer "N2SM <support@n2sm.net>"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      locales \
      fonts-takao \
      fonts-vlgothic \
      build-essential \
      libjpeg8-dev \
      zlib1g-dev \
      libtiff5-dev \
      libfreetype6-dev \
      python-dev \
      python-pip \
      texlive-full \
      && \
    apt-get clean

RUN locale-gen en_US.UTF-8
RUN locale-gen ja_JP.UTF-8

RUN pip install pillow
RUN pip install lxml
RUN pip install sphinx
RUN pip install sphinxcontrib-blockdiag
RUN pip install sphinxcontrib-seqdiag
RUN pip install sphinxcontrib-actdiag
RUN pip install sphinxcontrib-nwdiag
RUN pip install sphinxjp.themes.basicstrap
RUN pip install rst2pdf

RUN mkdir /docs/
WORKDIR /docs/

CMD ["/bin/bash"]

