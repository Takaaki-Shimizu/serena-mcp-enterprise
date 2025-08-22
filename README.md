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

# 2. プロジェクトパスを設定
# ./compose.yaml を編集
# - ../your-project:/workspace/your-project:ro
# を実際のプロジェクトパスに変更

# 3. 起動
make up

# その他のコマンド
make down     # 停止・削除
make restart  # 再起動
```