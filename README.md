# ghcr-hgf

This is an image for running Hierarchical Gaussian Filter on Julia.

The following Julia packages are installed in this image.


- ActionModels v0.3.1 `https://github.com/ilabcode/ActionModels.jl#main`
- BenchmarkTools v1.3.2
- CSV v0.10.9
- Colors v0.12.10
- DataFrames v1.4.4
- Distributions v0.25.80
- ForneyLab v0.12.0
- HierarchicalGaussianFiltering v0.3.0 `https://github.com/ilabcode/HierarchicalGaussianFiltering.jl#main`
- IJulia v1.24.0
- LogExpFunctions v0.3.21
- Plots v1.38.4
- PyCall v1.95.1
- RDatasets v0.7.7
- RxInfer v2.7.0
- StatsModelComparisons v1.1.0
- StatsPlots v0.15.4
- Turing v0.24.0
- Statistics


You can configure this image on Devcontainer or run it on your local PC.

## ghcr-hgf for Mac(Intel)

```
docker run -d --name notebook -v `pwd`:/home/jovyan/work -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes ghcr.io/ykunisato/hgf:1.8.5 start-notebook.sh --NotebookApp.token="token that you set"
```
## ghcr-hgf for Mac(Apple Silicon)

```
docker run -d --name notebook -v `pwd`:/home/jovyan/work -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes ghcr.io/ykunisato/hgf:1.8.5.arm start-notebook.sh --NotebookApp.token="token that you set"
```


