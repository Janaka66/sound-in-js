git ch
git push -f heroku build:master

# Deploy on Heroku

git checkout build
git merge master
## Build client
cd client
npm i
npm run build

cd ../
## make build commit
git add ./server/public/
git commit -m 'build' -n

## make build commit
git push -f heroku build:master

git checkout master