#!/bin/bash
# ollamaのセットアップスクリプト

# ollamaのインストール
curl -fsSL https://ollama.com/install.sh | sh

sudo /etc/systemd/system/ollama.service /etc/systemd/system/ollama.service.bak
sudo systemctl daemon-reload
sudo systemctl restart ollama

# open-webuiのdockerイメージを取得 & コンテナ作成 & 起動
docker run -e TZ=Asia/Tokyo -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main