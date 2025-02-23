#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2097
# Hash 9493
# Hash 7532
# Hash 6865
# Hash 9845
# Hash 5860
# Hash 4785
# Hash 2918
# Hash 3654
# Hash 8420
# Hash 2365
# Hash 6213
# Hash 3456
# Hash 3462
# Hash 5853
# Hash 7336
# Hash 7395
# Hash 9590
# Hash 3548
# Hash 7644
# Hash 1911
# Hash 8212
# Hash 2621