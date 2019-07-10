workflow "Github Pages" {
  on = "push"
  resolves = ["deploy"]
}

action "install" {
  uses = "actions/npm@master"
  args = "install"
}

action "build" {
  needs = "install"
  uses = "actions/npm@master"
  args = "run-script build"
}

action "master" {
  needs = "build"
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "master" {
  needs = "build"
  secrets = ["GITHUB_TOKEN"]
  uses = "actions/npm@master"
  args = "run-script deploy"
  env = {
    NODE_DEBUG = "gh-pages"
  }
}
