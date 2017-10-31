FROM jupyter/datascience-notebook:latest

RUN conda install --quiet --yes -c conda-forge fbprophet && \
    conda remove --quiet --yes --force qt pyqt && \
    conda clean -tipsy
