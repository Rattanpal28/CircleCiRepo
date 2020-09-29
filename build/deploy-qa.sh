#Convert to MDAPI format for deployment to prod
#echo "Converting to MDAPI format..."
#sfdx force:source:convert -d deploy_qa -r force-app
#Deploy to prod & run all tests
echo "Deploying metadata api"
sfdx force:source:convert -d deploy_qa -r force-app 
echo "Deploying to production & running all tests..."
sfdx force:mdapi:deploy -u Qat -d ./manifest -w 100 