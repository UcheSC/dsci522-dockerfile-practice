FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# create a tmp folder in the container
# copy a linux conda lock file into the temp folder
COPY conda-linux-64.lock /tmp/conda-linux-64.lock


# update mamba to install the packages in the environment.yml
# note all we have done previously was copy the file into the container
RUN mamba update --quiet --file /tmp/conda-linux-64.lock \
    && mamba clean --all -y -f \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}" 

# Each command creates a new layer 
# combining them into one command keeps them in the same layer
# RUN mamba clean --all