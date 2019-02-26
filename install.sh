#!/bin/bash
echo "Setting up a conda environment for python GIS workflow"
echo "New conda env name: gis"

# source /Users/hayley/.bash_profile && echo "$useConda"
#https://askubuntu.com/questions/98782/how-to-run-an-alias-in-a-shell-script'
# conda='/Users/hayley/miniconda3/bin/conda' #don't do this

conda() {
    /Users/hayley/miniconda3/bin/conda "$@"
}
conda create -n gis python=3.6 && conda activate gis && echo "GIS environment activated"

# Install Geopandas
conda install -c conda-forge geopandas

# # Install geoplot
conda install -c conda-forge geoplot

# Install osmnx
conda install -c conda-forge osmnx

# Install pysal
conda install -c conda-forge pysal

# Install contextily
conda install -c conda-forge contextily

# Install rasterio
conda install -c conda-forge rasterio

# Install rasterstats
conda install -c conda-forge rasterstats

# Install pycrs
pip install pycrs

# Install Dash using Pip
pip install dash==0.19.0  # The core dash backend
pip install dash-renderer==0.11.1  # The dash front-end
pip install dash-html-components==0.8.0  # HTML components
pip install dash-core-components==0.14.0  # Supercharged components
pip install plotly --upgrade  # Plotly graphing library