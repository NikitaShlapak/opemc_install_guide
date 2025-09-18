FROM openmc/openmc:latest
RUN pip install jupyterlab
EXPOSE 8888
RUN mkdir /home/jupyter
WORKDIR /home/jupyter
CMD jupyter lab --port=8888 --no-browser --ip=0.0.0.0 --allow-root
