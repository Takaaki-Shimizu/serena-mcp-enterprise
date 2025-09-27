# Production-ready Serena MCP with properly installed Language Servers
FROM ghcr.io/oraios/serena:latest

# Node.jsのパスを設定（公式イメージに含まれているnvmを使用）
ENV PATH="/root/.nvm/versions/node/v22.18.0/bin:${PATH}"

# ========================================
# PHP言語サーバー（Intelephense）のインストール
# Serenaが期待する正確な場所にインストール
# ========================================
RUN mkdir -p /root/.serena/language_servers/static/Intelephense/php-lsp && \
    cd /root/.serena/language_servers/static/Intelephense/php-lsp && \
    npm install intelephense@1.14.4 && \
    # 実行可能ファイルの存在確認
    ls -la node_modules/.bin/intelephense && \
    # Serenaが直接呼び出せるようにシンボリックリンク作成
    ln -sf node_modules/.bin/intelephense ./intelephense

# ========================================
# TypeScript/JavaScript言語サーバーのインストール
# ========================================
RUN mkdir -p /root/.serena/language_servers/static/TypeScript && \
    cd /root/.serena/language_servers/static/TypeScript && \
    npm install typescript typescript-language-server && \
    # 実行可能ファイルの存在確認
    ls -la node_modules/.bin/typescript-language-server && \
    # Serenaが直接呼び出せるようにシンボリックリンク作成
    ln -sf node_modules/.bin/typescript-language-server ./typescript-language-server

# ========================================
# Python言語サーバーのインストール
# ========================================
RUN pip install --no-cache-dir python-lsp-server[all] && \
    mkdir -p /root/.serena/language_servers/static/Python && \
    # Pythonの場合はシステムのpylspを直接リンク
    ln -sf $(which pylsp) /root/.serena/language_servers/static/Python/pylsp

# 作業ディレクトリ設定
WORKDIR /workspace