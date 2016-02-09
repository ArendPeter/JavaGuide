echo 'Killing all Jekyll instances'
kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
clear

# serve all di print deliverables

# Writers
echo "Serving Writers PDF"
jekyll serve --detach --config configs/config_writers.yml,configs/config_writers_pdf.yml

# programmers
echo "Serving programmers PDF"
jekyll serve --detach --config configs/config_programmers.yml,configs/config_programmers_pdf.yml

echo "All done."
echo "Now run . mydoc_multibuild_pdf.sh"
