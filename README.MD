```bash
kubectl port-forward --namespace postgres svc/postgresql 5432:5432 & PGPASSWORD="$POSTGRES_PASSWORD" psql --host 127.0.0.1 -U postgres -d postgres -p 5432

kubectl create ns django-startproject
istioctl install --set profile=default --set meshConfig.accessLogFile=/dev/stdout -y
kubectl label namespace django-startproject istio-injection=enabled
helm install postgresql bitnami/postgresql --version 10.13.11 --set global.postgresql.postgresqlPassword="password9987" -n django-startproject
 
kubectl label namespace peptest istio-injection=enabled
```