github-page
===
This is a boilerplate application to automate github-pages deployments of single page application built around parcel.

## usage
```sh
hub clone ivoputzer/github-page new-progect-name
cd new-project-name
rm -rf .git
git init
hub create
npm init
git commit -m "initial commit"
git push -u origin master
```

## gotchas
Github access token needs to be configured within repo settings. Default `GITHUB_TOKEN` does not have enough permissions to trigger a page build.

And that is it! your github page will be available in no-time 🎉
