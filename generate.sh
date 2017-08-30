#! /bin/bash
sed '/<!--START_HTML-->/,/<!--END_HTML-->/d' < /usr/share/blog/content/page.md \
 | sed -e 's/<\(a\|br\)\s[^>]*>//g' \
 | sed -e 's/<\/[^>]*>//g' \
 | sed '/+++/,/+++/d' > /page-pdf.md