export PROJECT=$(gcloud info --format='value(config.project)')
export BUCKET=$PROJECT-helm-repo
gsutil -m rm -r gs://$BUCKET