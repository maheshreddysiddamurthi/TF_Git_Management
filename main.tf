terraform {
  backend "s3" {
  }
}
provider "github" {
  owner = "maheshreddysiddamurthi"
}

resource "github_repository" "repo" {
  for_each           = var.repo_list
  name               = each.key
  allow_rebase_merge = false
  allow_squash_merge = false
  description        = each.value.description
  visibility         = each.value.visibility
}

resource "github_branch" "repo_branch" {
  repository = github_repository.repo[each.key]
  branch     = "master"
}

resource "github_branch_default" "default_branch" {
  repository = github_repository.repo[each.key]
  branch     = github_branch.repo_branch.branch
}
