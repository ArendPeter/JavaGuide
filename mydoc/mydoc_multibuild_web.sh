kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
clear

# Writers
echo "Building Writers ..."
jekyll build --config configs/config_writers.yml
# jekyll serve --config configs/config_writers.yml
echo "done"

# programmers
echo "Building programmers ..."
jekyll build --config configs/config_programmers.yml
# jekyll serve --config configs/config_programmers.yml
echo "done"

echo "All finished building all the web outputs!!!"
echo "Now push the builds to the server."
echo "Run . mydoc_multiscp.sh"

# All done.
# Now run . mydoc_multiscp.sh to push the build to your server.


