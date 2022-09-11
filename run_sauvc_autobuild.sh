#!/usr/bin/env bash

docker run --rm -it \
    -v /home/hydro/sauvc:/sauvc \
    sauvc_autobuild:latest \
    bash

echo "Done."
