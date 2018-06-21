export SA_EMAIL=$(gcloud iam service-accounts list \
    --filter="displayName:concourse" \
    --format='value(email)')
gcloud iam service-accounts delete $SA_EMAIL