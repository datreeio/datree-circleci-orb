#!/bin/sh

targetPath="$TARGET_PATH"
cliArguments="$CLI_ARGUMENTS"
helmArguments="$HELM_ARGUMENTS"
kustomizeArguments="$KUSTOMIZE_ARGUMENTS"

printf "datree version: "
datree version
printf "\n"

if [ -z "$DATREE_TOKEN" ]; then
    printf "No account token configured, see https://github.com/naorpeled/datree-circleci-orb for instructions\n"
    exit 1
fi

if [ "$IS_HELM_CHART" = "true" ]; then
    helm datree test $targetPath $cliArguments -- $helmArguments
elif [ "$IS_KUSTOMIZATION" = "true" ]; then
    datree kustomize test $targetPath $cliArguments -- $kustomizeArguments
else
    datree test $targetPath $cliArguments
fi
