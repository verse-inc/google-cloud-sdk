#!/bin/bash

# Helper script to synchronize local google-cloud-sdk code with partial code repo.
# Accompanies `gcloud components update`

cp $HOME/tools/google-cloud-sdk/LICENSE .
cp $HOME/tools/google-cloud-sdk/README .
cp $HOME/tools/google-cloud-sdk/RELEASE_NOTES .

cp $HOME/tools/google-cloud-sdk/bin/docker-credential-gcloud bin/.
cp $HOME/tools/google-cloud-sdk/bin/gcloud bin/.
cp $HOME/tools/google-cloud-sdk/bin/git-credential-gcloud.sh bin/.
cp $HOME/tools/google-cloud-sdk/bin/gsutil bin/.

cp -r $HOME/tools/google-cloud-sdk/lib/googlecloudsdk/* lib/googlecloudsdk/.

# delete everything except readme file in these subdirs
find lib/googlecloudsdk/api_lib ! -name 'README.md' -mindepth 1 -delete
find lib/googlecloudsdk/command_lib! -name 'README.md' -mindepth 1 -delete
find lib/googlecloudsdk/generated_clients ! -name 'README.md' -mindepth 1 -delete

