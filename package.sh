#Committing any changes to Git
git add .
git commit -m "COMPX341-22A-A3 Committing from CI/CD Pipeline"
git push origin master
echo "Commit successful"

#Going into the 'assets' directory
cd assets

#Running application using NPM
npm install
npm run build
npm run start

