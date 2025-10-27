#!/bin/bash
set -e

echo "👉 安装依赖..."
bun install

echo "👉 应用 D1 数据库迁移..."
wrangler d1 migrations apply prod-sub-box-db --remote

echo "👉 部署 Worker..."
bun run deploy

echo "✅ 部署完成"
