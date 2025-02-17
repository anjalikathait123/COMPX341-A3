#!/bin/bash

if [ -z "$1" ]; then
    echo "Please enter a commit message"
    exit
fi

cd assets

npm install
npm run build 
if [ $? == 0 ]; then
    echo "Build successful"
    cd ../
    git add .
    git commit -m "$1"
    git push origin master
    echo "Commit successful"
    
    cd assets
    npm run start

else 
    echo "Build failed"
fi
