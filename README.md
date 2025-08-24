# Serena MCP Enterprise Docker Environment

## 概要

企業セキュリティ要件を満たすSerena MCPサーバーのDocker環境です。

## セキュリティ要件適合状況

✅ **6/6項目完全適合**

1. ✅ AIの学習に使用されないこと
2. ✅ サーバー上に保持されないこと  
3. ✅ 通信経路上で漏洩するリスクがないこと
4. ✅ プロンプトの構築がブラックボックス化していないこと
5. ✅ モデル出力がブラックボックス化していないこと
6. ✅ 外部サーバーに情報を送信していないこと

## クイックスタート

### 方法1: Claude Code で使用する場合（推奨）

```bash
# 1. リポジトリをクローン
git clone https://github.com/Takaaki-Shimizu/serena-mcp-enterprise

# 2. プロジェクトディレクトリで Claude MCP を登録（一度だけ実行）
cd /path/to/your/project
claude mcp add serena -- sh -c "cd /path/to/serena-mcp-enterprise && make up PROJECT=/path/to/your/project > /dev/null 2>&1 && docker exec -i serena-mcp-enterprise-serena-1 serena-mcp-server --transport stdio --project /workspace"

# 3. Claude Code を起動
claude

# 4. リポジトリ初期解析
/mcp__serena__initial_instructions
```

### 方法2: Docker Compose を直接使用する場合

```bash
# 1. リポジトリをクローン
git clone https://github.com/Takaaki-Shimizu/serena-mcp-enterprise
cd serena-mcp-enterprise

# 2. 起動（プロジェクトパスを指定）
make up PROJECT=/path/to/your/project

# その他のコマンド
make down PROJECT=/path/to/your/project     # 停止・削除
make restart PROJECT=/path/to/your/project  # 再起動
```

### 動作について

- 指定したプロジェクトディレクトリがDockerコンテナ内の `/workspace` にマウントされます
- `.serena` ディレクトリは自動的にプロジェクトディレクトリ内に作成されます