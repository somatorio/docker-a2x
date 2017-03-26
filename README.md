a2x, asciidoc and fop (yeap, no dblatex :/) in a container :)

## How to use
docker container run --rm -it -v $(pwd):/workdir somatorio/a2x --fop (options) file.txt
