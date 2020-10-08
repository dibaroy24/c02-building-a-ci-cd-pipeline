ssh-keygen
git clone https://github.com/dibaroy24/c02-building-a-ci-cd-pipeline.git
python3 -m venv ~/.azuredeveops
source ~/.azuredevops/bin/activate
cd c02-building-a-ci-cd-pipeline
make all
az login
az webapp up -n myflaskmlapp-service --sku F1 --location eastus
./make_predict_azure_app.sh