#!/bin/bash

set -e

[ -z "$1" ] && exit 1

if [ -z "$SITE" ]; then
    echo "no site selected, set SITE"
    exit 1
fi
    
echo "fetching sites-repo..."
. "$1"/scripts/get_sites.sh

if [ ! -d "$1/sites/$SITE" ]; then
    echo "selected site ($SITE) not found"
    exit 1
fi

rm -fdR "$1/site/"
mkdir -p "$1"/site

SITE_MAIN=$(echo "$SITE" | cut -d '/' -f 1)

[ -d "$1/sites/$SITE_MAIN/all" ] && cp -ax "$1/sites/$SITE_MAIN/all/*" "$1/site/"
cp -ax "$1/sites/$SITE/*" "$1/site/"

echo "Site set to $SITE"