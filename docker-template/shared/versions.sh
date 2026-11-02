#!/usr/bin/env bash
if ((BASH_VERSINFO[0] < 3))
then
  echo "This script requires Bash version 3 or newer."
  exit 1
fi
set -Eeuo pipefail
shopt -s nullglob

# Monitor this Git repository.
REPO_URL="{{ cookiecutter.docker_package_repo }}"

# Explicitly operate in same directory as this script.
cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

# When bootstrapping, create a directory for each desired version, and
# then run this script with no arguments.  On subsequent runs, list
# the versions to track on the command line.
{% raw %}
versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
    versions=( */ )
    json='{}'
else
    json="$(< versions.json)"
fi
versions=( "${versions[@]%/}" )

for version in "${versions[@]}"; do
    export version

    # Find the latest point release for this version.
    possibles=()
    while IFS='' read -r line; do possibles+=("$line"); done < <(
        git ls-remote --tags --refs "${REPO_URL}" \
            "refs/tags/v${version}.*" \
            | sed -E 's!^.*refs/tags/v!!' \
            | sort -ruV
    )

    # No point releases?  Maybe this is a feature branch.
    if [ ${#possibles[@]} -eq 0 ]; then
        git ls-remote --branches  "${REPO_URL}" \
            "refs/heads/${version}" \
            | grep -F "refs/heads/${version}" > /dev/null \
            || (echo ERROR: Version "${version}" not found.; exit 1)
        full_version=""
        echo "$version: feature (topic) branch"
    else
        full_version="${possibles[0]}"
        echo "$version: $full_version"
    fi
    export full_version

    # Pin to this point release or commit ID.
    json="$(jq <<<"$json" -c '.[env.version] = {
        version: (
            if env.full_version != "" then
                env.full_version
            else
                false
            end
        )
    }')"
done
{% endraw %}

jq <<<"$json" -S . > versions.json
