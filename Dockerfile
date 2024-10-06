# 基础镜像
ARG JELLYFIN_VERSION="latest"
FROM jellyfin/jellyfin:${JELLYFIN_VERSION}

# 作者信息
LABEL LiuKun="liukunup@outlook.com"

# 更新 & 安装 & 下载
RUN    apt-get update \
    && apt-get install -y fonts-noto-cjk-extra \
    && apt-get clean
