#!/bin/bash

set -e

. "$GLUONDIR"/scripts/modules.sh

for module in $GLUON_MODULES; do
	var=$(echo $module | tr '[:lower:]/' '[:upper:]_')
	eval repo=\${${var}_REPO}
	eval branch=\${${var}_BRANCH}
	eval commit=\${${var}_COMMIT}

	mkdir -p "$GLUONDIR"/$module
	cd "$GLUONDIR"/$module
	git init

	if [ -n "$commit" ]; then
		git checkout $commit 2>/dev/null || git fetch $repo $branch
		git checkout -B base $commit
	else
		git fetch $repo $branch
		git checkout -B base FETCH_HEAD
	fi
done
