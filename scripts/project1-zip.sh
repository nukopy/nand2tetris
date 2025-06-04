#!/bin/bash

set -euo pipefail

TARGET_DIR="./projects/1"
OUT_FILENAME="./submissions/project1.zip"

# 出力用ディレクトリが存在しない場合は作成
mkdir -p "$(dirname "./submissions")"

# .hdl ファイルのリストを取得
hdl_files=$(find projects/1 -type f -name "*.hdl")

# ファイルが存在するか確認
if [ -z "$hdl_files" ]; then
    echo "No .hdl files found in $TARGET_DIR." >&2
    exit 1
fi
echo "Found the following .hdl files:"
for file in $hdl_files; do
    echo " - $file"
done

zip -j "$OUT_FILENAME" $hdl_files
echo "Created $OUT_FILENAME with HDL files."
