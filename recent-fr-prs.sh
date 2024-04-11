#!/usr/bin/env sh

gh api -X GET search/issues -f q='is:pr reviewed-by:ekroon org:github project:github/5842 archived:false sort:updated-desc updated:>2024-04-07' | jq '.items[] | .html_url' | sed -e 's/^"//g' -e 's/"$//g' -e 's/^/- /g' | pbcopy
