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
# 1. リポジトリクローン
git clone [your-repo-url]
cd serena-mcp-enterprise

# 2. プロジェクト配置
# あなたのプロジェクトを ../your-project/ に配置

# 3. 設定調整（必要に応じて）
# compose.yamlのvolumesパスを確認

# 4. 起動
docker-compose up -d