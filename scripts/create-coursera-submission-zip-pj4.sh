#!/bin/bash

set -euo pipefail

# 出力ファイル名
OUT_FILENAME="./submissions/project4.zip"

# 出力ディレクトリ作成
mkdir -p "$(dirname "$OUT_FILENAME")"

# .hdl ファイルのリストを取得
TARGET_DIR1="./projects/4/fill"
TARGET_DIR2="./projects/4/mult"
asm_files=$(find "$TARGET_DIR1" "$TARGET_DIR2" -type f -name "*.asm")

# ファイルが存在するか確認
if [ -z "$asm_files" ]; then
    echo "No .asm files found in $TARGET_DIR1 or $TARGET_DIR2." >&2
    exit 1
fi

echo "Found the following .asm files:"
for file in $asm_files; do
    echo " - $file"
done

# zip 作成（-j: フラットに）
rm -f "$OUT_FILENAME"  # 既存のファイルを削除
zip -j "$OUT_FILENAME" $asm_files

echo "Created $OUT_FILENAME with HDL files."
