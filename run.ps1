docker-compose build
minikube image load mysql-server:latest
minikube image load flask-app:latest
kubectl apply -f mysql-deployment.yaml
kubectl apply -f flask-deployment.yaml