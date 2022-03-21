LOCATION=eastus
RESOURCE_GROUP_NAME=eap-jms-demo-group

az group create -n $RESOURCE_GROUP_NAME -l $LOCATION
az appservice plan create -n eap-jms-demo-plan  -l $LOCATION -g $RESOURCE_GROUP_NAME --sku P1V3 --is-linux
az webapp create -n eap-jms-demo -g $RESOURCE_GROUP_NAME --plan eap-jms-demo-plan --runtime JBOSSEAP:7-java11
