# ghcr-hgf

This is an image for running Hierarchical Gaussian Filter on Julia.

The following Julia packages are installed in this image.


- ActionModels v0.3.3 `https://github.com/ilabcode/ActionModels.jl#main`
- ArviZ v0.8.2
- BenchmarkTools v1.3.2
- CSV v0.10.9
- Colors v0.12.10
- DataFrames v1.5.0
- Distributions v0.25.83
- ForneyLab v0.12.0
- HierarchicalGaussianFiltering v0.3.1 `https://github.com/ilabcode/HierarchicalGaussianFiltering.jl#main`
- IJulia v1.24.0
- LogExpFunctions v0.3.23
- Plots v1.38.5
- PyCall v1.95.1
- RDatasets v0.7.7
- RxInfer v2.8.0
- StatsModelComparisons v1.1.0
- StatsPlots v0.15.4
- Suppressor v0.2.1
- Turing v0.24.0
- Statistics


You can configure this image on Devcontainer or run it on your local PC.

## Mac(Intel)

```
docker run -d --name notebook -v `pwd`:/home/jovyan/work -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes ghcr.io/ykunisato/hgf:1.8.5 start-notebook.sh --NotebookApp.token="token that you set"
```
## Mac(Apple Silicon)

```
docker run -d --name notebook -v `pwd`:/home/jovyan/work -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes ghcr.io/ykunisato/hgf:1.8.5.arm start-notebook.sh --NotebookApp.token="token that you set"
```

## Windows
```
docker run -d --name notebook -v "%cd%":/home/jovyan/work -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes ghcr.io/ykunisato/hgf:1.8.5 start-notebook.sh --NotebookApp.token="token that you set"
```

Open the web browser and type "http://localhost:8888/" in the URL bar. You will see the JupyterLab on the web browser. Type JupyterLab in token that you set.

