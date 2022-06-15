# Datree Orb [![CircleCI status](https://circleci.com/gh/naorpeled/datree-circleci-orb.svg?style=shield "CircleCI status")](https://circleci.com/gh/naorpeled/datree-circleci-orb) [![CircleCI Orb Version](https://badges.circleci.com/orbs/naorpeled/datree.svg)](https://circleci.com/developer/orbs/orb/naorpeled/datree) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/naorpeled/datree-circleci-orb/main/LICENSE)

CircleCI orb for using the Datree CLI in your CircleCI jobs.

# 🤖 What is Datree?
Datree is a CLI tool that provides a policy enforcement solution to run automatic checks for rule violations on Kuberenetes configuration files.  
This orb exposes a command and executor that run the Datree CLI against given k8s configuration file(s) in your repository, featuring full **Helm** and **Kustomize** support.


To learn more about Datree, visit the [Datree website](https://www.datree.io/).

### 🏗️ How to setup?
Get started in 2 simple steps:

- Obtain your Datree account token by following the instructions described [here](https://hub.datree.io/setup/account-token#connect-your-dashboard-to-the-cli).
- Configure your token by setting DATREE_TOKEN as an [environment variable](https://circleci.com/docs/2.0/env-vars/#environment-variable-usage-options) (an example can be found [here](https://circleci.com/developer/orbs/orb/naorpeled/datree#usage-policy-check)).


### 📙 How to use?
Examples can be found [here](https://circleci.com/developer/orbs/orb/naorpeled/datree#quick-start).

### 😎 How to contribute
Feel free to contribute to this orb by opening an issue or creating a pull request.

## 🏹 Resources

[Datree's website](https://www.datree.io/) - The official Datree website.

[CircleCI Orb Registry Page](https://circleci.com/orbs/registry/orb/naorpeled/datree) - The official registry page of this orb for all versions, executors, commands, and jobs described.

[CircleCI Orb Docs](https://circleci.com/docs/2.0/orb-intro/#section=configuration) - Docs for using and creating CircleCI Orbs
