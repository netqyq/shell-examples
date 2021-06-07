# extract 1000 pages from zhwiki-latest-pages-articles.xml
grep -m 1000 -n '</page>' zhwiki-latest-pages-articles.xml | tail -n 1 | cut -d ":" -f 1 | xargs -I LINE head -n LINE zhwiki-latest-pages-articles.xml > 1000.xml
