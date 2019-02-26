# Geopandas installation using conda
1. Make sure only one conda channel is used (`conda-forge` not `defaults`). 
You can check this in `~/.condarc`.  

[source](https://github.com/geopandas/geopandas/issues/806#issuecomment-414864353)

```bash
conda config --remove channels defaults
conda create -n exe -c conda-forge python=3.6 geopandas
```
![img](images/conda_geopandas.png)

2. The main cause is the incompatibility of fiona, gdal versions with geopandas package. 
After following this instruction, I have this versions of packages installed, and `import geopandas` doesn't throw any more `fiona` import errors:

```
fiona 1.8.4           py36h0e3174d_1002    conda-forge  
gdal  2.4.0           py36h0e3174d_1002    conda-forge
geopandas  0.4.0      py_1                 conda-forge
```
![working-env](images/working_setup.png)

3. Be careful any future call,  `conda install otherPkg`, does not update any of these libraries' versions


3. To make this conda environment accessible to jupyter lab or notebook instance,
we need to install `nb_conda` in the environment that we want to make accessible.

```bash
conda install -n myEnv -c conda-forge nb_conda 
```