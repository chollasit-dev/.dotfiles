#!/usr/bin/env bash

optional_packages=(
    nginx-extras
    postgresql
    postgresql-contrib
)

echo "${optional_packages[@]}"

unset -v optional_packages
