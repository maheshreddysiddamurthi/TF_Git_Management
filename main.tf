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
