FROM jupyter/scipy-notebook
LABEL maintainer="Yoshihiko Kunisato <kunisato@psy.senshu-u.ac.jp>"

# Install Julia
USER root
ARG JULIA_VERSION="1.8.5"
RUN JULIA_MAJOR=`echo $JULIA_VERSION | sed -E  "s/\.[0-9]+$//g"` && \
    wget https://julialang-s3.julialang.org/bin/linux/x64/$JULIA_MAJOR/julia-$JULIA_VERSION-linux-x86_64.tar.gz && \
    tar -xvzf julia-$JULIA_VERSION-linux-x86_64.tar.gz && \
    cp -r julia-$JULIA_VERSION /opt/ && \
    ln -s /opt/julia-$JULIA_VERSION/bin/julia /usr/local/bin/julia && \
    rm -r julia-$JULIA_VERSION-linux-x86_64.tar.gz

# Insatall Julia package
USER jovyan
RUN julia -e 'ENV["PYTHON"] = raw"/usr/bin/python3";using Pkg;Pkg.update();Pkg.add(["IJulia","PyCall"]);Pkg.build(["IJulia","PyCall"]);'
RUN julia -e 'using Pkg;Pkg.add(url="https://github.com/ilabcode/HierarchicalGaussianFiltering.jl")'
RUN julia -e 'using Pkg;Pkg.add(url="https://github.com/ilabcode/ActionModels.jl")'
RUN julia -e 'using Pkg;Pkg.add(["Turing","CSV","DataFrames","Plots", "StatsPlots", "LogExpFunctions", "Colors", "StatsModelComparisons", "Distributions","Statistics","RDatasets","ForneyLab","RxInfer","BenchmarkTools"]);Pkg.precompile()'
WORKDIR "${HOME}"