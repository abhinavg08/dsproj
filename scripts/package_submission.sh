#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 Project_XXX" >&2
  exit 1
fi

ZIP_NAME="$1"
NOTEBOOK_PATH="notebooks/plastic_tide.ipynb"
REPORT_PDF="report/report.pdf"

if [[ ! -f "$NOTEBOOK_PATH" ]]; then
  echo "Error: $NOTEBOOK_PATH not found" >&2
  exit 1
fi

if [[ ! -f "$REPORT_PDF" ]]; then
  echo "Error: $REPORT_PDF not found. Build the LaTeX report first (make -C report)." >&2
  exit 1
fi

rm -f "$ZIP_NAME.zip"
zip -r "$ZIP_NAME.zip" "$NOTEBOOK_PATH" "$REPORT_PDF"

echo "Created $ZIP_NAME.zip"