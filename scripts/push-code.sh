export PROJECT=$(gcloud info --format='value(config.project)')
for repo in app-source chart-source; do
cd $repo
git init && git add . && git commit -m 'Initial commit'
git config credential.helper gcloud.sh
git remote add google \
    https://source.developers.google.com/p/$PROJECT/r/$repo
    git push --all google
cd ..
done