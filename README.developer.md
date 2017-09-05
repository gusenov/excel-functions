# En

[Excel functions (alphabetical)](https://support.office.com/en-us/article/Excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188)

```js
(function () {
 var result = "{\n \"functions\": [\n",
     tableId = "tblID0EBDAAA",
     tbody = $('#' + tableId).children('tbody');
 $(tbody).find('tr').each(function (index) {
    var functionNameCol = $(this).find("td:eq(0)"),
        functionNameParagraph = $(functionNameCol).find("p:eq(0)"),
        functionNameLink = $(functionNameParagraph).find("a:eq(0)"),
        functionName = functionNameLink.text(),
        functionLink = functionNameLink.attr('href'),
        functionIntro = $(functionNameParagraph).find("img:eq(0)").attr('title'),
        typeAndDescriptionCol = $(this).find("td:eq(1)"),
        description = $(typeAndDescriptionCol).find("p:eq(0)").clone().children().remove().end().text().replace(/[\n\r]/g, ' '),
        category = $(typeAndDescriptionCol).find("b:eq(0)").text().replace(/[\n\r]/g, ' '),
        categoryLastChar = category.trim().substr(category.length - 1);
        item = "  {\n   \"name\": " 
         + (functionName.endsWith(" function") ? "\"" + functionName.slice(0, -9) + "\"" :
            (functionName.endsWith(" functions") ? "[\"" + functionName.slice(0, -10).split(", ").join("\", \"") + "\"]" : "\"" + functionName + "\""))
         + ",\n   \"url\": \"https://support.office.com/en-us/article/" 
         + functionLink + "\",\n"
         + "   \"category\": \"" + (categoryLastChar === ':' ? category.slice(0, -1) : category) + "\",\n"
         + "   \"description\": \"" + description.trim() + "\",\n"
         + "   \"intro\": \"" + (typeof functionIntro === "undefined" ? "" : 
                             (functionIntro.startsWith("Excel ") ? functionIntro.slice(6, functionIntro.length) : functionIntro)) + "\"\n"
         + "  },\n";
    result += item;
 });
 console.log(result + " ]\n}\n");
}());
```

[excel-functions-alphabetical.json](excel-functions-alphabetical.json)

[Excel functions (by category)](https://support.office.com/en-us/article/Excel-functions-by-category-5f91f4e9-7b42-46d2-9bd1-63f26a86c0eb)

# Ru

[Функции Excel](https://support.office.com/ru-ru/article/%D0%A4%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8-Excel-%D0%BF%D0%BE-%D0%B0%D0%BB%D1%84%D0%B0%D0%B2%D0%B8%D1%82%D1%83-b3944572-255d-4efb-bb96-c6d90033e188)

```js
(function () {
 var result = "{\n \"functions\": [\n",
     tableId = "tblID0EBDAAA",
     tbody = $('#' + tableId).children('tbody');
 $(tbody).find('tr').each(function (index) {
    var functionNameCol = $(this).find("td:eq(0)"),
        functionNameParagraph = $(functionNameCol).find("p:eq(0)"),
        functionNameLink = $(functionNameParagraph).find("a:eq(0)"),
        functionName = functionNameLink.text(),
        functionLink = functionNameLink.attr('href'),
        functionIntro = $(functionNameParagraph).find("img:eq(0)").attr('title'),
        typeAndDescriptionCol = $(this).find("td:eq(1)"),
        description = $(typeAndDescriptionCol).find("p:eq(0)").clone().children().remove().end().text().replace(/[\n\r]/g, ' '),
        category = $(typeAndDescriptionCol).find("b:eq(0)").text().replace(/[\n\r]/g, ' '),
        categoryLastChar = category.trim().substr(category.length - 1);
        item = "  {\n   \"name\": " 
         + (functionName.startsWith("Функция ") ? "\"" + functionName.slice(8, functionName.length) + "\"" :
            (functionName.startsWith("Функции") ? "[\"" + functionName.slice(8, functionName.length).split(", ").join("\", \"") + "\"]" : "\"" + functionName + "\""))
         + ",\n   \"url\": \"https://support.office.com/ru-ru/article/" 
         + functionLink + "\",\n"
         + "   \"category\": \"" + (categoryLastChar === ':' ? category.slice(0, -1) : category) + "\",\n"
         + "   \"description\": \"" + description.trim() + "\",\n"
         + "   \"intro\": \"" + (typeof functionIntro === "undefined" ? "" : 
                             (functionIntro.startsWith("Excel ") ? functionIntro.slice(6, functionIntro.length) : functionIntro)) + "\"\n"
         + "  },\n";
    result += item;
 });
 console.log(result + " ]\n}\n");
}());
```

[функции-excel.json](функции-excel.json)

[Функции Excel (по категориям)](https://support.office.com/ru-ru/article/%D0%A4%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8-Excel-%D0%BF%D0%BE-%D0%BA%D0%B0%D1%82%D0%B5%D0%B3%D0%BE%D1%80%D0%B8%D1%8F%D0%BC-5f91f4e9-7b42-46d2-9bd1-63f26a86c0eb)

# Ссылки

- [api.jquery.com/find](https://api.jquery.com/find/)
- [w3schools.com/jquery/jquery_ref_selectors.asp](https://www.w3schools.com/jquery/jquery_ref_selectors.asp)
- [stackoverflow.com/questions/8624592/jquery-how-to-get-only-direct-text-without-tags-in-html](https://stackoverflow.com/questions/8624592/jquery-how-to-get-only-direct-text-without-tags-in-html)
- [stackoverflow.com/questions/952924/javascript-chop-slice-trim-off-last-character-in-string](https://stackoverflow.com/questions/952924/javascript-chop-slice-trim-off-last-character-in-string)
- [stackoverflow.com/questions/8483179/javascript-array-as-a-list-of-strings-preserving-quotes](https://stackoverflow.com/questions/8483179/javascript-array-as-a-list-of-strings-preserving-quotes)
