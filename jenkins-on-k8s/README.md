# Jenkins Master & Slaves on top of Kubernetes

run following command

./startup.sh


#When script finish check the status of pod 

kubectl get pods --namespace jenkins

#When its ready then run following command

minikube service jenkins --namespace jenkins

#It will open browser with Jenkins running
