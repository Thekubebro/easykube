gcloud container clusters create concourse --image-type ubuntu \
    --machine-type n1-standard-2 --zone us-central1-f \
    --scopes cloud-source-repos-ro,storage-full