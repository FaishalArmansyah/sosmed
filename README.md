# sosmed-app

1 - Push code
> git remote add origin https://github.com/FaishalArmansyah/sosmed.git

> git push -u origin main


2 - Build docker image
> docker build -t "image-name:tag" .

- example:
> docker build -t nubie13/web-profilpage:2 .


3 - Publish docker image to dockerhub
> docker login

> docker push "image-name:tag"

- example:
> docker push nubie13/web-profilpage:2

4 - Kubernetes Deployment
> helm create sosmed
- create & config secret.yaml
- copy values.yaml to values-staging.yaml
- config values.yaml based on requirement(production)
- config values-staging.yaml based on requirement(staging)

- restore production db:
> create database dbsosmed in instance DB RDS

> restore dump.sql (from git source) to dbsosmed in instance DB RDS.

- restore staging db:
> create database dbsosmed_staging in instance DB RDS

> restore dump.sql (from git source) to dbsosmed_staging in instance DB RDS.

- Deploy to namespace default (production)
> helm install sosmed sosmed/ --values sosmed/values.yaml

- Deploy to namespace staging
> helm install sosmed sosmed/ --values sosmed/values-staging.yaml -n staging
