#!/usr/bin/env bash

if [[ $1 = *xyz* ]]; then
    sleep 3
    echo '{"NotHandled":true,"Sizes":{"WordSize":8,"MaxAlign":8},"Packages":[]}'
else
    exec bazel run -- @io_bazel_rules_go//go/tools/gopackagesdriver "$@" | tee >> packagesdriver.log
fi
