# Get the private key from the environment variable
#echo "Setting up INTEGRATION Connection..."
#mkdir keys
#echo $SFDC_SERVER_KEY | base64 -d > keys/server.key
# Authenticate to salesforce
#echo "Authenticating..."
#sfdx force:auth:jwt:grant --clientid $SFDC_QA_CLIENTID --jwtkeyfile keys/server.key --username $SFDC_QA_USER --setdefaultdevhubusername -a Qat

# Get the private key from the environment variable
echo "Setting up INTEGRATION Connection..."
mkdir keys
echo $SFDC_SERVER_KEY | base64 -d > keys/server.key
# Authenticate to salesforce
echo "Authenticating..."
sfdx force:auth:jwt:grant --clientid $SFDC_QA_CLIENTID --jwtkeyfile keys/server.key --username $SFDC_QA_USER --setdefaultdevhubusername -a Qat
