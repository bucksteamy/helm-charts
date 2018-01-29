#DEMO FLOW
Talk about ACS-engine AKS and ACI Virtual Kubelet, Open Service Broker for Azure (built on OSS service catalog (PF))

az group create -n rg-aks-demo-new -l eastus
az aks create --resource-group rg-aks-demo-new --name aks-nje-demo-new --node-count 3
If kubectl is not intalled 
    az aks install-cli
az aks get-credentials --resource-group rg-aks-demo-new --name aks-nje-demo-new

kubectl get nodes
kubectl create -f azure-vote.yaml
kubectl get svc -w

az aks get-versions --name aks-nje-demo-new --resource-group rg-aks-demo-new --output table

az aks upgrade --name aks-nje-demo-new --resource-group rg-aks-demo-new --kubernetes-version 1.8.2


Talk about Draft Brigade 

Port forward Grafana
kubectl --context acsengine-nje-v2-5a39ec88 -n istio-system port-forward $(kubectl --context acsengine-nje-v2-5a39ec88 -n istio-system get pod -l app=grafana -o jsonpath='{.items[0].metadata.name}') 3000:3000 &

port forward Zipkin
kubectl --context acsengine-nje-v2-5a39ec88 port-forward -n istio-system $(kubectl --context acsengine-nje-v2-5a39ec88 get pod -n istio-system -l app=zipkin -o jsonpath='{.items[0].metadata.name}') 9411:9411 &

mkdir smackweb
cd smackweb

~/projects/helm-charts/charts/gitsetup.sh https://github.com/bucksteamy/smackweb.git


mkdir smackapi
cd smackweb

~/projects/helm-charts/charts/gitsetup.sh https://github.com/bucksteamy/smackapi.git

kubectl config use-context minikube 

draft create --pack /draft/packs/smackweb
cp /Users/nicholaseberts/projects/smackapi/brig-project.yaml .

draft up

kubectl config use-context acsengine-nje-v2-5a39ec88

make change in API
commit change
push change

check slack

merge





