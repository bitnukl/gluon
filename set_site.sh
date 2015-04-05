#!/bin/bash

set -e

DIR="$(pwd)"

SITE="$1"
if [ -z "$SITE" ]; then
    echo "no site selected, set SITE"
    exit 1
fi
    
echo "fetching sites-repo..."
. ./get_sites.sh
cd "$DIR"

if [ ! -d "site-modules/$SITE" ]; then
    echo "selected site ($SITE) not found"
    exit 1
fi

rm -fdR "./site/"
mkdir -p "./site"

SITE_MAIN=$(echo "$SITE" | cut -d '/' -f 1)

[ -d "./site-modules/$SITE_MAIN/all" ] && cp -ax "./site-modules/$SITE_MAIN/all/"* ./site/
cp -ax "./site-modules/$SITE/"* "./site/"

echo "Site set to $SITE"