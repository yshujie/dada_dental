# dada_dental

人工智能探索项目

## 功能特性

## 软件架构
dada_dental/
│
├── data/                   # 数据文件
├── models/                 # 模型文件
├── notebooks/              # Jupyter notebooks
├── scripts/                # 脚本文件
├── src/                    # 源代码
│   ├── __init__.py
│   ├── chain.py            # 链的定义
│   ├── agent.py            # 代理的定义
│   ├── utils.py            # 工具函数
│   ├── vector_db/          # 向量数据库相关代码
│   │   ├── __init__.py
│   │   ├── vector_store.py # 向量存储的实现
│   │   └── search.py       # 向量搜索的实现
│   └── api/                # API 层代码
│       ├── __init__.py
│       ├── main.py         # API 入口
│       └── endpoints.py    # API 端点
│
├── tests/                  # 测试文件
│
├── Dockerfile              # Docker 配置
├── requirements.txt        # Python 包依赖
└── README.md               # 项目说明文件

## 快速开始

### 依赖检查

### 构建

#### 构建 Docker 镜像
```
docker build --build-arg PROJECT_NAME=dada_dental --build-arg GITHUB_REPO_URL=https://github.com/yshujie/dada_dental.git -t dada_dental_image .
```

### 运行

## 使用指南
