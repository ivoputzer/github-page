workflow "Github Pages" {
  on = "push"
  resolves = ["deploy"]
}

action "install" {
  uses = "actions/npm@master"
  args = "install"
}

action "master" {
  needs = "install"
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "build" {
  needs = "master"
  uses = "actions/npm@master"
  args = "run-script build"
}

action "deploy" {
  needs = "build"
  secrets = ["GITHUB_TOKEN"]
  uses = "actions/npm@master"
  args = "run-script deploy"
  env = {
    NODE_DEBUG = "gh-pages"
  }
}
