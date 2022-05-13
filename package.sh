#! /bin/bash

#Going into the 'assets' directory
cd assets

#npm install -g ts-node typescript '@type/node'
#ts-node typescript-file.ts


#if [tsc *.ts = true]; then
#    echo "Build successful"
#    npm run start
#else
#    echo "Build failed"
#    exit
#fi




npm install
npm run build 
if [$? == 0]; then
    echo "success"
    npm run start
else 
    echo "failed"
fi

#VALID="$(npm run build | grep -o 'failing')"
#npm audit

#if [ $VALID != "failing" ]; then
#    echo "Build successful"
#    npm run start
#else 
#    echo "Build failed"
#    exit
#fi