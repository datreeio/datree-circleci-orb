#!/bin/sh

targetFile="$TARGET_FILE"
cliArguments="$ARGUMENTS"
isHelmChart="$IS_HELM_CHART"
helmArguments="$HELM_ARGUMENTS"
isKustomization="$IS_KUSTOMIZATION"
kustomizeArguments="$KUSTOMIZE_ARGUMENTS"

printf "datree version: "
datree version
printf "\n"

if [ -z "$DATREE_TOKEN" ]; then
    printf "No account token configured, see https://github.com/datreeio/action-datree for instructions\n"
    exit 1
fi

if [ "$isHelmChart" = "true" ]; then
    printf "Running datree on helm chart\n"
    helm datree test $targetFile $cliArguments -- $helmArguments
elif [ "$isKustomization" = "true" ]; then
    printf "Running datree on kustomization\n"
    datree kustomize test $targetFile $cliArguments -- $kustomizeArguments
else
    printf "Running datree on file\n"
    datree test $targetFile $cliArguments
fi
