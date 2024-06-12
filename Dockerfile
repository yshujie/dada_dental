# 使用官方的 Python 基础镜像
FROM python:3.8-slim

# 设置代理
ENV http_proxy="http://0.0.0.0:20171"
ENV https_proxy="http://0.0.0.0:20171"
ENV no_proxy="localhost,127.0.0.1"

# 设置工作目录
WORKDIR /opt/dada_dental

# 安装必要的系统工具，包括 procps 包以获得 pkill
RUN apt-get update && apt-get install -y wget git inotify-tools procps

# 复制 requirements.txt 并安装 Python 包依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目代码
COPY . .

# 设置启动命令
CMD ["bash", "-c", "chmod +x /opt/dada_dental/watch.sh && /opt/dada_dental/watch.sh"]