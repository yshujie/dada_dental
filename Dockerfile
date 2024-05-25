# 使用官方的 Python 基础镜像
FROM python:3.8-slim

# 设置工作目录
WORKDIR /opt/dada_dental

# 安装必要的系统工具
RUN apt-get update && apt-get install -y wget git

# 复制 requirements.txt 并安装 Python 包依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目代码
COPY . .

# 启动容器时默认进入 bash
CMD ["bash"]