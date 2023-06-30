# 2022_2023-application-containerization-and-orchestration-k4112c-fedotov_p_s-azatova_g_j

## Absract

## Content

## Quick start

### Alias

```bash
alias kubectl='minikube kubectl --'
```

### Monitoring

```
# Start minikube
minikube delete && minikube start --kubernetes-version=v1.23.0 --bootstrapper=kubeadm --extra-config=kubelet.authentication-token-webhook=true --extra-config=kubelet.authorization-mode=Webhook --extra-config=scheduler.bind-address=0.0.0.0 --extra-config=controller-manager.bind-address=0.0.0.0

# Ensure the metrics-server addon is disabled on minikube
minikube addons disable metrics-server

# Clone git repo
git clone https://github.com/prometheus-operator/kube-prometheus

# Create the monitoring stack using the config in the manifests directory
kubectl apply --server-side -f manifests/setup
kubectl wait \
	--for condition=Established \
	--all CustomResourceDefinition \
	--namespace=monitoring
kubectl apply -f manifests/

# Minikube port forwarding
kubectl port-forward service/grafana -n monitoring --address=0.0.0.0 8100:3000 &> /dev/null &
```

### Connect 4 application



## Architecture

## Installation

## How to use?

## Pull requests
@ztvgzh
## Author
Fedotov P
Azatova G
