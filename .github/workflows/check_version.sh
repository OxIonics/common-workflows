#!/usr/bin/env bash

POETRY=$1
PYPTOML=$2

DYNAMIC_VERSION=$($POETRY version -s | cut -d "." -f1,2)
TOML_VERSION=$(grep "version = " "$PYPTOML" | cut -d "=" -f2 | sed 's/[\"| ]//g')

if [ "$DYNAMIC_VERSION" != "$TOML_VERSION" ]
then
    echo "Mismatch: dynamic version is $DYNAMIC_VERSION, but pyproject.toml's is $TOML_VERSION"
fi
