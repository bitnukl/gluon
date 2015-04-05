. ./sites

for SiteFeed in $SITE_FEEDS; do
	var=$(echo $SiteFeed | tr '[:lower:]/' '[:upper:]_')
	eval repo=\${${var}_REPO}
	eval branch=\${${var}_BRANCH}
	eval commit=\${${var}_COMMIT}

	mkdir -p "site-modules/$SiteFeed"
	cd "site-modules/$SiteFeed"
	git init

	git checkout $commit 2>/dev/null || git fetch $repo $branch
	git checkout -B base $commit
done
