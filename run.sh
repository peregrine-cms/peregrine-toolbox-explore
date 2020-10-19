#!/bin/bash

docker run --name peregrine-toolbox --network host -it --rm -v $(pwd):/peregrine peregrinecms/peregrine-toolbox
