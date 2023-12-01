#!/bin/bash

echo "UE5 Game Build Pipeline"
echo "Written for Unreal ingdoms by Trident_For_U (Tristan Poland) 2023"

minikube start --driver=docker
echo "Displaying log output for Minikube dashboard and Tekton proxy"
minikube dashboard & kubectl port-forward -n tekton-pipelines service/tekton-dashboard 9097:9097