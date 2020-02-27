# //deploy.sh
#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
hugo

git branch -D master
git push origin :master

git checkout -b master
git add -f public
git commit -m 'deploy'
git subtree push --prefix public origin master

git checkout profile