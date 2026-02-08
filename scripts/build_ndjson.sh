#!/bin/bash

# プロジェクトのトップディレクトリでscripts/build_ndjson.sh

# --- 設定項目 ---
BASE_PATH="./fsh-generated/resources"
OUTPUT_FILE="./fsh-generated/resourcesjane-doe.ndjson"

# 対象ファイルのパターン（BASE_PATHからの相対パス）
PATTERNS=(
  "Composition-jane-doe-composition.json"
  "DocumentManifest-JaneDoePhrDocumentManifest.json"
  "DocumentReference-jane-doe*.json"
)

# --- 実行 ---
rm -f "$OUTPUT_FILE"

echo "Searching in: $BASE_PATH"

for PATTERN in "${PATTERNS[@]}"; do
  # パスとパターンを結合
  FULL_PATTERN="$BASE_PATH/$PATTERN"

  # ワイルドカードを展開して配列に格納
  # nullglob を一時的に有効にすると、一致しない場合に空になるため安全です
  shopt -s nullglob
  MATCHED_FILES=( $FULL_PATTERN )
  shopt -u nullglob

  if [ ${#MATCHED_FILES[@]} -eq 0 ]; then
    echo "Skip: No files found for $FULL_PATTERN"
    continue
  fi

  for FILE in "${MATCHED_FILES[@]}"; do
    if [ -f "$FILE" ]; then
      # jqで処理して追記
      jq -c . "$FILE" >> "$OUTPUT_FILE"
      echo "Flattened: $FILE"
    fi
  done
done

echo "---------------------------------"
echo "Success! NDJSON created at: $OUTPUT_FILE"
