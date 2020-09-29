FROM jupyter/r-notebook

## Install Octave Kernel
RUN pip install octave_kernel

## Install & Enable Jupyterlab S3 Browser
RUN jupyter labextension install jupyterlab-s3-browser
RUN pip install jupyterlab-s3-browser

RUN jupyter serverextension enable --py jupyterlab_s3_browser