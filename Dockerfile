FROM jupyter/datascience-notebook:latest

RUN conda install --quiet --yes -c conda-forge fbprophet pandas scikit-learn tensorflow keras plotnine ggplot && \
    conda remove --quiet --yes --force qt pyqt && \
    conda clean -tipsy
