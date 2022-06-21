#!/bin/sh

printf "datree version: "
datree version
printf "\n"

if [ -z "$DATREE_TOKEN" ]; then
    printf "No account token configured, see https://github.com/naorpeled/datree-circleci-orb for instructions\n"
    exit 1
fi


if [ "$IS_HELM_CHART" = "true" ]; then
    echo "Running Helm"
    helm datree test $TARGET_PATH $CLI_ARGUMENTS -- $HELM_ARGUMENTS
elif [ "$IS_KUSTOMIZATION" = "true" ]; then
    echo "Running Kustomize"
    datree kustomize test $TARGET_PATH $CLI_ARGUMENTS -- $KUSTOMIZE_ARGUMENTS
else
    echo "Running Datree"
    datree test $TARGET_PATH $CLI_ARGUMENTS
fi
