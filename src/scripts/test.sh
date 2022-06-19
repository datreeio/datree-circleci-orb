#!/bin/sh

targetPath="$TARGET_PATH"
cliArguments="$CLI_ARGUMENTS"
isHelmChart="$IS_HELM_CHART"
helmArguments="$HELM_ARGUMENTS"
isKustomization="$IS_KUSTOMIZATION"
kustomizeArguments="$KUSTOMIZE_ARGUMENTS"

printf "datree version: "
datree version
printf "\n"

if [ -z "$DATREE_TOKEN" ]; then
    printf "No account token configured, see https://github.com/naorpeled/datree-circleci-orb for instructions\n"
    exit 1
fi

if [ "$isHelmChart" = "true" ]; then
    printf "Building helm chart\n"
elif [ "$isKustomization" = "true" ]; then
    datree kustomize test $targetPath $cliArguments -- $kustomizeArguments
else
    datree test $targetPath $cliArguments
fi
