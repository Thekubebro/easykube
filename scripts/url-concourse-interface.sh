export SERVICE_IP=$(kubectl get svc \
    --namespace default concourse-web \
    -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
printf "Concourse URL: [http://$SERVICE_IP:8080]\nUsername: concourse\nPassword: $PASSWORD\n"