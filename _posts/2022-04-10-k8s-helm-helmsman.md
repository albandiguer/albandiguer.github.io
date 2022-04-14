---
layout: post
title: 'Kubernetes, Helm, Helmsman'
date: 2022-04-10 18:43
categories: [devops]
published: true
---

This is a review of a toolchain to deal with Kubernetes (k8s) as code for CI, CD and audit purpose, namely Helm and Helmsman.
To demonstrate the toolchain I will deploy [Focalboard](https://www.focalboard.com/), an open source task management board (like Trello).

# Kubernetes

To kick things off we want a local k8s sandbox cluster. I use `nix-shell` and `minikube`. Here is a nix-shell file to get that.

```nix
{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell { buildInputs = [ pkgs.minikube ]; }
```

We can then start a local K8s cluster with `minikube start`

```shell
➜  minikube start
😄  minikube v1.25.2 on Darwin 12.3.1 (arm64)
🆕  Kubernetes 1.23.3 is now available. If you would like to upgrade, specify: --kubernetes-version=v1.23.3
✨  Using the docker driver based on existing profile
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
🔄  Restarting existing docker container for "minikube" ...
🐳  Preparing Kubernetes v1.21.2 on Docker 20.10.7 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
    ▪ Using image kubernetesui/dashboard:v2.3.1
    ▪ Using image kubernetesui/metrics-scraper:v1.0.7
🌟  Enabled addons: storage-provisioner, default-storageclass, dashboard
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
```

And check the status `minikube status`

```shell
➜  minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured
```

We now have a local k8s env up and running. We now want to deploy things in the cluster, for that we will use Helm.

# Helm

> Helm is the best way to find, share, and use software built for [Kubernetes](https://kubernetes.io)
> 
> Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

> Visit [Artifact Hub](https://artifacthub.io) to explore [Helm charts](https://artifacthub.io/packages/search?kind=0) public repositories.

Great we start by adding that `helm` dependency into our nix derivation

```nix
{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell { buildInputs = [ pkgs.minikube pkgs.kubernetes-helm ]; }
```

Then we find an existing artifact for Focalboard on the hub and add the public repo to our helm environment.

```shell
helm repo add k8s-at-home https://k8s-at-home.com/charts/
helm repo update
helm install focalboard k8s-at-home/focalboard
```

We get the application URL `http://127.0.0.1:8080` by running the following

```shell
export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=focalboard,app.kubernetes.io/instance=focalboard" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME 8080:8000
```
