export PROJECT=$(gcloud info --format='value(config.project)')
export BUCKET=$PROJECT-helm-repo
export TOKEN_SECRET=$(kubectl get serviceaccount default -o jsonpath="{.secrets[0].name}")
export CLUSTER_CA=$(kubectl get secret $TOKEN_SECRET -o jsonpath='{.data.ca\.crt}')
export TOKEN=$(kubectl get secret $TOKEN_SECRET -o jsonpath='{.data.token}' | base64 --decode)

cat > params.yaml <<EOF
chart_name: nginx
release_name: dev-site
bucket: $BUCKET
cluster_ca: $CLUSTER_CA
token: $TOKEN
project: $PROJECT
service_account_json: '$(cat concourse-sa.json)'
EOF