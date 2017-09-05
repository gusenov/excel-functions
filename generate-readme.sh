#!/bin/bash

function getValue()
{
    # jq --raw-output ".functions|.[$1].$2" "$3"
    
    # jq --raw-output ".functions|.[$1].$2|join(\", \")" $3
    
    jq --raw-output ".functions | .[$1].$2 | if type==\"array\" then join(\", \") else . end" $3
}

en_json="excel-functions-alphabetical.json"
ru_json="функции-excel.json"

foo_count=$(jq --raw-output ".functions | length" $en_json)

output_file=README.md
rm $output_file

echo "| № | Function name | Функция | Category | Категория | Type and description | Тип и описание | Маркер версии |" >> $output_file
echo "| - | ------------- | ------- | -------- | --------- | -------------------- | -------------- | ------------- |" >> $output_file

for (( idx=0; idx<$foo_count; idx++ ))
do
 name_en=$(getValue $idx "name" $en_json)
 name_ru=$(getValue $idx "name" $ru_json)
 url_en=$(getValue $idx "url" $en_json)
 url_ru=$(getValue $idx "url" $ru_json)
 category_en=$(getValue $idx "category" $en_json)
 category_ru=$(getValue $idx "category" $ru_json)
 description_en=$(getValue $idx "description" $en_json)
 description_ru=$(getValue $idx "description" $ru_json)
 intro_en=$(getValue $idx "intro" $en_json)
 echo "| $((1 + idx)) | [$name_en]($url_en) | [$name_ru]($url_ru) | $category_en | $category_ru | $description_en | $description_ru | $intro_en |" >> $output_file
 echo "$((1 + idx)) of $foo_count"
done
