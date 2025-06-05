#!/bin/bash

set -euo pipefail

TARGET_DIR="$1"
if [ $# -ne 1 ]; then
    echo "Usage: $0 <target_dir>"
    echo "Example: $0 ./projects/1"
    exit 1
fi

# Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory $TARGET_DIR does not exist." >&2
    exit 1
fi

# Create the output filename
# out filename: target directory "project/1" -> "project1.zip"
OUT_FILENAME="./submissions/project$(basename "$TARGET_DIR").zip"

# 出力用ディレクトリが存在しない場合は作成
mkdir -p "$(dirname "./submissions")"

# .hdl ファイルのリストを取得
hdl_files=$(find "$TARGET_DIR" -type f -name "*.hdl")

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
