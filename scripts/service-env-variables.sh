export SA_EMAIL=$(gcloud iam service-accounts list \
    --filter="displayName:concourse" --format='value(email)')
export PROJECT=$(gcloud info --format='value(config.project)')