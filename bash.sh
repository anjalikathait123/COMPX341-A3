#!/bin/bash

cd assets

npm install
npm run build 
if [ $? == 0 ]; then
    echo "Build successful"
    #npm run start
    cd ../
    git add .
    git commit -m "COMPX341-22A-A3 Committing from CI/CD Pipeline - catches compile time errors"
    git push origin master
    echo "Commit successful"

else 
    echo "Build failed"
fi