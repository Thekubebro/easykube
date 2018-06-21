for repo in app-source chart-source; do
    cd $repo
    git tag v1.0.0
    git push google --tags
    cd ..
done