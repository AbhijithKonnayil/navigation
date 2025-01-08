#!/bin/bash

json_file="release_list_1.json"

#Named argument parser
for ARGUMENT in "$@"; do
    KEY=$(echo $ARGUMENT | cut -f1 -d=)

    KEY_LENGTH=${#KEY}
    VALUE="${ARGUMENT:$KEY_LENGTH+1}"

    export "$KEY"="$VALUE"
done
# New data to add, with variables expanded
#"version_name": "3.4.46",
#"version_code": "1743",
#"timestamp": "Tue Nov 12 2024 11:10:00 AM",
#"size": "187 MB",
#"branch": "PROD. Release Version.",
#"release_notes": "PROD. Release Version.",
#"link": "https://www.ipengtai.com/shop/js/app-prodchina-release1230.apk",
#"apk_name": "prod-release1.apk"

new_entry="{
    \"version_name\": \"$version_name\",
    \"version_code\": \"$version_code\",
    \"timestamp\": \"$timestamp\",
    \"size\": \"$size\",
    \"branch\": \"$branch\",
    \"release_notes\": \"$release_notes\",
    \"link\": \"$link\",
    \"apk_name\": \"$apk_name\",
    }"

jq ". += [$new_entry]" "$json_file" >tmp.json && mv tmp.json "$json_file"
