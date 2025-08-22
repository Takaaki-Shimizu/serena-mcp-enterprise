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