#!/bin/bash

function getValue()
{
    jq --raw-output ".functions | .[$1].$2 | if type==\"array\" then join(\"', '\") else . end" $3
}

en_json="excel-functions-alphabetical.json"
ru_json="функции-excel.json"

foo_count=$(jq --raw-output ".functions | length" $en_json)

for (( idx=0; idx<$foo_count; idx++ ))
do
 name_en=$(getValue $idx "name" $en_json)
 name_ru=$(getValue $idx "name" $ru_json)
 echo -n "'$name_en', "  | tr "'" "\""
 echo -n "'$name_ru', "  | tr "'" "\""
done
