# This is the community edition of our build pipeline

This repo is open for you to use in any projects and modify as you see fit! We would appreciate you creating pull requests for any additional modifications you make that my be useful to the community.

<!-- Image Grid -->
<p align="center">
    <img width="35%" src="https://github.com/tristanpoland/UE-Game-Build-Toolkit/assets/34868944/407afabe-ad68-4547-977a-cd3eecba6153" alt="Image 1">
    <img width="35%" src="https://github.com/tristanpoland/UE-Game-Build-Toolkit/assets/34868944/ae1f625b-bf48-4c89-a788-01d1e0d554f0" alt="Image 2">
</p>
<p align="center">
    <img width="35%" src="https://github.com/tristanpoland/UE-Game-Build-Toolkit/assets/34868944/c6e50727-6f29-4a49-9033-fd9728ee6a8f" alt="Image 3">
    <img width="35%" src="https://github.com/tristanpoland/UE-Game-Build-Toolkit/assets/34868944/61c2263b-0463-465b-91e9-1d07192fca5b" alt="Image 4">
</p>

# UE Game Build Toolkit
A build and deploymant management toolkit written for large scale Unreal Engine games

# Table of Contents

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

#### Pipeline overview:
![image](https://github.com/Unreal-Kingdoms/UE-Game-Build-Toolkit/assets/34868944/c7292c78-2645-4582-98f7-7b8374062803)

### Reboot setup
Next we need to take reboots into account. In order to start the entire cluster, cluster dashboard , and Tekton dashboard on system start, follow the steps below
- Run ``crontab -e`` to edit your user's cron list
- Enter the following in a new line on your crontab file
```@reboot [path to start.sh]```
- Now save the crontab file and do a reboot to test that your cluster will start automatically (You should notice a browser window to your cluster dashboard will open on every reboot)

## Usage
This section outlines basic usage of the toolkit, this consists mainly of interacting with the Tekton pipeline to run pre-defined automated tasks.


Written with ❤️ by Tristan J Poland
