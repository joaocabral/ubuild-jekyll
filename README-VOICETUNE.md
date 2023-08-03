WARNING: running is way too slow if installation is not done in a separate step and the container isn't reused!

install:
this will also start server after install
expect up to 20mins for this 

`docker run --volume="$PWD:/srv/jekyll:Z" --name jekyll --publish 0.0.0.0:4000:4000 jekyll/jekyll`

run in dev mode from existing container:

docker start jekyll 

run in dev mode:

`docker run --volume="$PWD:/srv/jekyll:Z" --publish 127.0.0.1:4000:4000 jekyll/jekyll jekyll serve`

run interactively:

```
docker run -it --volume="$PWD:/srv/jekyll:Z" --publish 127.0.0.1:4000:4000 jekyll/jekyll /bin/bash
jekyll serve
```
