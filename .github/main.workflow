workflow "Github Pages" {
  on = "push"
  resolves = ["deploy"]
}

action "master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "install" {
  needs = "master"
  uses = "actions/npm@master"
  args = "install"
}

action "build" {
  needs = "install"
  uses = "actions/npm@master"
  args = "run-script build"
}

action "deploy" {
  uses = "ivoputzer/github-pages-deploy-action@master"
  needs = "build"
  env = {
    BUILD_SCRIPT = "npm run-script build"
    BRANCH = "gh-pages"
    FOLDER = "dist"
    ACCESS_TOKEN = ""
  }
  secrets = ["GITHUB_TOKEN"]
}
