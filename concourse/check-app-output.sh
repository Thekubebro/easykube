export POD_NAME=$(kubectl get pods \
    -n default -l "app=nginx,release=dev-site" \
    -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME 8080:80 &
curl -is localhost:8080 | grep 'Server\|color'