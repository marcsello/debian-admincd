#!/bin/bash

set -eu
shopt -s nullglob

function log {
    echo $@ 1>&2
}

function get_pkg_description {
    deb=("cache/packages."**"/${1}_"*".deb")
    if [[ "$deb" == "" ]]; then # <- this does not work for some reason...
        echo "unknown"
        return
    fi

    tmpdir=$(mktemp -d)

    cp $deb $tmpdir/pkg.deb
    pushd "$tmpdir" 1>&2

    /bin/ar x pkg.deb
    tar xf control.tar.*

    cat control | sed -n  -e 's/^Description:\s*//p'

    popd 1>&2
    rm -rf "$tmpdir"
}

for f in config/package-lists/*.list.chroot; do
    log "Processing $f ..."
    first_line=$(head -n1 $f)
    [[ "$first_line" =~ ^#\ doc ]] || continue

    title=$(cut -d '|' -f 2 <<< $first_line )
    description=$(cut -d '|' -f 3 <<< $first_line )

    title="${title## }"
    title="${title%% }"
    description="${description## }"
    description="${description%% }"

    echo "## ${title}"
    echo
    echo "${description}"
    echo

    while read pkg; do
        [[ -z "$pkg" ]] && continue

        echo "- **$pkg**: $(get_pkg_description $pkg)"

    done < <(tail -n +2 $f)
    
    echo
done
