docker-compose build
minikube image load mysql-server:latest
minikube image load flask-app:latest
kubectl apply -f k8s/mysql-deployment.yaml
kubectl apply -f k8s/flask-deployment.yaml