#/bin/bash
echo 'start to build gitbook ...'

\cp /srv/data/* .

gitbook build ./ /srv/html/

gitbook serve
