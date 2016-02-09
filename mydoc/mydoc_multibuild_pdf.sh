# Writers PDF
echo "Building the Writers PDF..."
prince --javascript --input-list=../mydoc_writers-pdf/prince-file-list.txt -o /Users/tjohnson/projects/documentation-theme-jekyll/mydoc_writers_pdf.pdf;

# programmers PDF
echo "Building the programmers PDF ..."
prince --javascript --input-list=../mydoc_programmers-pdf/prince-file-list.txt -o /Users/tjohnson/projects/documentation-theme-jekyll/mydoc_programmers_pdf.pdf;

echo "All done."
echo "Now run . mydoc_multibuild_web.sh"
