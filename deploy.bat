@echo off
npm run build&&cd dist&&git init&&git add -A&&git commit -m 'deploy'&&git push -f https://github.com/bagus123/vue-gh-pages.git master:gh-pages&&cd ..