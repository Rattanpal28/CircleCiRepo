#Convert to MDAPI format for deployment to prod
#echo "Converting to MDAPI format..."
#sfdx force:source:convert -d deploy_uat -r force-app
#Deploy to prod & run all tests
#echo "Direct deployment: "
echo "Deploying to Uat"
#sfdx force:mdapi:deploy -u UAT -d ./manifest -w -1 -l RunAllTestsInOrg
#sfdx force:mdapi:deploy -u UAT -d  force-app -w -1 -l RunAllTestsInOrg
sfdx force:source:deploy -x manifest/package.xml -w 2 -u UAT
