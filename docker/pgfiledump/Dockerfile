# ベースイメージとしてPostgreSQLの公式イメージを使用
FROM postgres:15

# 開発用ツールとpg_filedump用の依存パッケージをインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    postgresql-server-dev-15 \
    liblz4-dev \
    sudo \
    vim \
    curl \
    && rm -rf /var/lib/apt/lists/*

# pg_filedumpのソースコードを取得してビルド
RUN git clone https://github.com/df7cb/pg_filedump.git \
    && cd pg_filedump \
    && make \
    && make install \
    && cd .. \
    && rm -rf pg_filedump

# 開発用ワークスペースを作成
WORKDIR /workspace

# PostgreSQLのデフォルトポートを公開
EXPOSE 5432