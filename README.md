## Create Github Pages Using Vue Cli

open console, run this command :

```shell
#install vue cli global
npm install -g @vue/cli
#create project
vue create vue-gh-pages
```

then, select default(babel, eslint)

> Yay!, your vue project created!..

next step add file deploy.bat (windows) and deploy.sh (linux & mac)

##### deploy.sh

```shell
# file deploy.sh
#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
```

##### deploy.bat

```shell
@echo off
npm run build&&cd dist&&git init&&git add -A&&git commit -m 'deploy'&&git push -f https://github.com/bagus123/vue-gh-pages.git master:gh-pages&&cd ..
```

ok, everything done, let's go deploy to github pages

run in console

```shell
sh deploy.sh
```

run in cmd (windows)

```shell
deploy
```

then, github pages will be created, in this source created on this link :

https://bagus123.github.io/vue-gh-pages/

#### refences

- [vue cli - deployment](https://cli.vuejs.org/guide/deployment.html#general-guidelines "vue cli doc")
- [vue cli - config](https://cli.vuejs.org/config/#global-cli-config "vue cli - config")
