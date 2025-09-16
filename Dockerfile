FROM ghcr.io/oraios/serena:latest

# PHP言語サーバー
RUN npm install -g intelephense@latest

# JavaScript言語サーバー
RUN npm install -g typescript-language-server@latest

WORKDIR /workspaces/serena
