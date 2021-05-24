rm -rf dist
yarn build
cd dist
git init
git add .
git commit -m "new pro"
git branch -M master
git remote add origin git@github.com:Tuohk/new-ui.git
git push -f -u origin master
cd -