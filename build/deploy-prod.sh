#Convert to MDAPI format for deployment to prod
echo "Converting to MDAPI format..."
sfdx force:source:convert -d deploy_prod -r force-app 
#Deploy to prod & run all tests
echo "Deploying to production"
#sfdx force:mdapi:deploy -u DevHub -d ./manifest -w -1 -l RunAllTestsInOrg b 
sfdx force:source:deploy -x manifest/package.xml -w 2 -u DevHub