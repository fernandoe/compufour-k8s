az.list.rg:
	az group list -o table

az.create.storage:
	az storage account create --resource-group MC_rg-microservices_c-microservices_eastus --name compufourstorage --location eastus --sku Standard_LRS

namespace.set:
	kubectl config set-context $(kubectl config current-context) --namespace=compufour

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

copy:
	kubectl cp /home/fernandoe/Downloads/CLIPP.FDB compufour/firebird-c8b6c89b5-rggpq:/firebird/data/CLIPP.FDB

%-shell:
	kubectl exec -it firebird-c8b6c89b5-rggpq -- sh
	# kubectl exec -it `kubectl get pod -l 'app=deploy-$*' -o jsonpath='{.items[0].metadata.name}'` -- sh
