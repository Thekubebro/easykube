export PROJECT=$(gcloud info --format='value(config.project)')
export BUCKET=$PROJECT-helm-repo
./helm plugin install https://github.com/viglesiasce/helm-gcs.git --version v0.1.1
gsutil mb -l us-central1 gs://$BUCKET
./helm gcs init gs://$BUCKET