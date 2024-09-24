#!/bin/bash
while IFS= read -r -d '' zipfile; do
    unzip -n "$zipfile" -d data
done < <(find ./data -name '*.zip' -print0)
