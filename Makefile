create.namespace:
	kubectl create -f 01-namespace-compufour.yml

create.deply:
	kubectl create -f 02-deploy-firebird.yml

create.service:
	kubectl create -f 03-service.yml

create.sc:
	kubectl create -f 04-azure-file-sc.yaml

create.pvc:
	kubectl create -f 05-azure-file-pvc.yaml

apply.deploy:
	kubectl apply -f 02-deploy-firebird.yml

ls:
	kubectl get pods --namespace compufour

get.all:
	kubectl get all --namespace compufour

logs:
	kubectl logs firebird-d4b85b4f6-bj5hw --namespace compufour -f

az.create.rg:
	az group create --name rg-compufour --location eastus

az.create.storage:
	az storage account create --resource-group rg-compufour --name compufourstorage --location eastus --sku Standard_LRS