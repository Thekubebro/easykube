export PASSWORD=$(openssl rand -base64 15)
cat > concourse.yaml <<EOF
concourse:
  password: $PASSWORD
  baggageclaimDriver: overlay
web:
  service:
    type: LoadBalancer
EOF