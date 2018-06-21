./fly -t local set-pipeline -p dev-site-deploy \
    -c pipeline.yaml -l params.yaml -n