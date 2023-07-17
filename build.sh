#!/bin/bash

mkdir _site
export JEKYLL_VERSION=3.8.6
docker pull jekyll/jekyll:$JEKYLL_VERSION
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:$JEKYLL_VERSION jekyll build
echo "you can now copy ./_site to your target destination!"
