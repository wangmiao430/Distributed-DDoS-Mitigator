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
# Hash 2785
# Hash 6847
# Hash 4138
# Hash 4102
# Hash 8865
# Hash 7263
# Hash 1978
# Hash 1229
# Hash 8006
# Hash 2206
# Hash 6352
# Hash 5792
# Hash 7032
# Hash 3439
# Hash 5623
# Hash 8136
# Hash 5331
# Hash 8722
# Hash 2184
# Hash 2838
# Hash 6670
# Hash 8417
# Hash 8309
# Hash 2780
# Hash 9746
# Hash 2367
# Hash 5627
# Hash 4117
# Hash 2880
# Hash 8965
# Hash 3315
# Hash 2257
# Hash 7497
# Hash 8810
# Hash 1927
# Hash 5645
# Hash 5892
# Hash 3498
# Hash 7578
# Hash 1863
# Hash 6907
# Hash 4790
# Hash 5547
# Hash 9808
# Hash 1544
# Hash 1479
# Hash 4332
# Hash 3546
# Hash 5007
# Hash 3344
# Hash 9585
# Hash 1122
# Hash 6444
# Hash 7223
# Hash 5960
# Hash 6455
# Hash 3551
# Hash 6340
# Hash 2484
# Hash 3531
# Hash 1979
# Hash 1153
# Hash 9569
# Hash 6732
# Hash 3330
# Hash 3083
# Hash 6965
# Hash 2051
# Hash 1212
# Hash 2376
# Hash 4392
# Hash 2139
# Hash 4796
# Hash 3963
# Hash 1508
# Hash 4436
# Hash 4508
# Hash 8909