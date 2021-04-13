FROM jupyter/datascience-notebook:notebook-6.3.0

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends libpq-dev

USER $NB_UID

RUN pip install --upgrade jupyterlab-git
RUN pip install psycopg2