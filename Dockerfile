FROM jupyter/datascience-notebook:latest

# 追加のパッケージをインストール
RUN pip install torch torchvision keras

# VSCode用の作業ディレクトリ
WORKDIR /home/jovyan/workspace

# ユーザー権限の設定
USER root
RUN mkdir -p /home/jovyan/workspace && chown -R jovyan:users /home/jovyan && chmod -R 777 /home/jovyan && chmod g+rwxs /home/jovyan/workspace
USER jovyan