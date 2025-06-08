#!/bin/bash

set -euo pipefail

# 引数チェック
if [ $# -ne 2 ]; then
    echo "Usage: $0 <target_dir1> <target_dir2>"
    echo "Example: $0 ./projects/3/a ./projects/3/b"
    exit 1
fi

TARGET_DIR1="$1"
TARGET_DIR2="$2"

# ディレクトリ存在確認
for dir in "$TARGET_DIR1" "$TARGET_DIR2"; do
    if [ ! -d "$dir" ]; then
        echo "Error: Directory $dir does not exist." >&2
        exit 1
    fi
done

# 出力ファイル名（例：project3.zip）
OUT_FILENAME="./submissions/project3.zip"

# 出力ディレクトリ作成
mkdir -p "$(dirname "$OUT_FILENAME")"

# .hdl ファイルのリストを取得
hdl_files=$(find "$TARGET_DIR1" "$TARGET_DIR2" -type f -name "*.hdl")

# ファイルが存在するか確認
if [ -z "$hdl_files" ]; then
    echo "No .hdl files found in $TARGET_DIR1 or $TARGET_DIR2." >&2
    exit 1
fi

echo "Found the following .hdl files:"
for file in $hdl_files; do
    echo " - $file"
done

# zip 作成（-j: フラットに）
zip -j "$OUT_FILENAME" $hdl_files

echo "Created $OUT_FILENAME with HDL files."
