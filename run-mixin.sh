#!/bin/sh
# Script to run a given mixin file

# Flags:
# -m: The name of the mixin to target, must be included
# -o: The path to the directory where you want the output to be copied to, must be included
# -i: The path to the directory containing the mixin file, if not included defaults to mixin-defs
#     directory inside container
# -a: The type of account (np, pr or localhost), if not included defaults to localhost
# -r: Include if you only want to generate Prometheus rules, both generated if neither included
# -d: Include if you only want to generate Grafana dashboards, both generated if neither included

# Additional arguments are the namespaces/environments, if none included defaults to localhost

# Global variables
# Sets Git branch/tag currently checked out to be used in dashboard tags and rule labels
#MAC_VERSION=$(git symbolic-ref -q --short HEAD || git describe --tags --exact-match)
MAC_VERSION=${MAC_VERSION:-'local'}

echo $MAC_VERSION
