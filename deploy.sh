rm -rf dist
yarn build
cd dist
git init
git add .
git commit -m "new pro"
git branch -M main1
git remote add origin git@github.com:Tuohk/new-ui.git
git push -u origin main1
cd -