#!/bin/bash

PARAMS=()

if [[ ! -z "$SOURCE_CREDENTIALS" ]]; then
        PARAMS+=("--screds=$SOURCE_CREDENTIALS")
fi

if [[ ! -z "$DESTINATION_CREDENTIALS" ]]; then
        PARAMS+=("--dcreds=$DESTINATION_CREDENTIALS")
fi

PARAMS+=("${1:-${SOURCE}}")
PARAMS+=("${2:-${DESTINATION}}")

skopeo copy "${PARAMS[@]}"
