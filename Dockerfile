# 设置项目名称变量
ARG PROJECT_NAME=dada_dental
ARG GITHUB_REPO_URL=https://github.com/yshujie/dada_dental.git

# 使用简版的 Ubuntu 作为基础镜像
FROM ubuntu:20.04

# 设置环境变量，以防止交互提示打断安装过程
ENV DEBIAN_FRONTEND=noninteractive
# 更新包管理器并安装必要的工具
RUN apt-get update && apt-get install -y wget bzip2 git

# 下载并安装 Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && \
    rm Miniconda3-latest-Linux-x86_64.sh

# 初始化 Conda
ENV PATH=/opt/conda/bin:$PATH
RUN /opt/conda/bin/conda init bash

# 克隆 GitHub 仓库
RUN git clone $GITHUB_REPO_URL /opt/$PROJECT_NAME

# 设置工作目录
WORKDIR /opt/$PROJECT_NAME

# 安装项目依赖
RUN /opt/conda/bin/conda env update -f environment.yml

# 设置环境变量以激活 conda 环境
SHELL ["conda", "run", "-n", "dada_dental", "/bin/bash", "-c"]
RUN echo "conda activate dada_dental" >> ~/.bashrc

# 启动容器时默认进入 bash
CMD ["bash"]