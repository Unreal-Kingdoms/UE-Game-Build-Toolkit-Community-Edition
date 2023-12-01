<img style="width: 50%; margin-left: 50%; margin-right: 50%;" src="https://github.com/tristanpoland/UE-Game-Build-Toolkit/assets/34868944/407afabe-ad68-4547-977a-cd3eecba6153"></img>

# UE-Game-Build-Tekton
A build and deploymant management toolkit written for large scale Unreal Engine games

- [UE-Game-Build-Tekton](#ue-game-build-tekton)
  - [Setup](#setup)
    - [Pipeline Setup](#pipeline-setup)
    - [Reboot Setup](#reboot-setup)
  - [Usage](#usage)

## Setup

### Pipeline Setup
First we need to do some initial pipeline setup so that we can automate and distribute various tasks across the Kubernetes cluster
- To set up the toolkit for the first time please run ``setup.sh`` and select "Run pipeline setup"
- Second you should run "Fix-Up MiniKub Drivers"
- Next, to start up the pipeline system run "Start UE pipeline system"
- Once your pipeline is started, in a new window re-run ``setup.sh`` and select "Add pipeline task"

### Reboot setup
Next we need to take reboots into account. In order to start the entire cluster, cluster dashboard , and Tekton dashboard on system start, follow the steps below
- Run ``crontab -e`` to edit your user's cron list
- Enter the following in a new line on your crontab file
```@reboot [path to start.sh]```
- Now save the crontab file and do a reboot to test that your cluster will start automatically (You should notice a browser window to your cluster dashboard will open on every reboot)

## Usage
This section outlines basic usage of the toolkit, this consists mainly of interacting with the Tekton pipeline to run pre-defined automated tasks.


UEGameBuild Toolkit (C) Tristan Poland 2023 (Written for UnrealKingdoms)
