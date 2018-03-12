FROM jupyter/datascience-notebook:latest

RUN conda update --all --quiet --yes -c conda-forge && \
    conda install --quiet --yes -c conda-forge fbprophet pandas scikit-learn tensorflow keras plotnine opencv-python ggplot && \
    conda remove --quiet --yes --force qt pyqt && \
    conda update --all --quiet --yes -c conda-forge && \
    conda clean -tipsy

RUN apt-get update -yq && apt-get install -yq opencv && apt-get clean && rm -rf /var/lib/apt/lists/*

#RUN jupyter labextension install jupyterlab_bokeh
