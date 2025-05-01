terraform {
  backend "s3" {
  }
}
provider "github" {
  owner = "maheshreddysiddamurthi"
}

provider "github" {
  token = ""
}

# Creating repositories
resource "github_repository" "repo" {
  for_each           = var.repo_list
  name               = each.key
  allow_rebase_merge = false
  allow_squash_merge = false
  description        = each.value.description
  visibility         = each.value.visibility
  auto_init          = true
}

# Sleep 30 sec to complete initial commit
resource "time_sleep" "wait_30_seconds" {
  depends_on      = [github_repository.repo]
  create_duration = "30s"
}

# Non master default branch
resource "github_branch" "repo_branch" {
  for_each      = { for k, v in var.repo_list : k => v if v.default_branch != "master" }
  repository    = github_repository.repo[each.key].name
  source_branch = "master"
  branch        = each.value.default_branch
}

# Creating Default branch
resource "github_branch_default" "default_branch" {
  for_each   = { for k, v in var.repo_list : k => v if v.default_branch != "master" }
  repository = github_repository.repo[each.key].name
  branch     = "master"
}

# locals {
#   test = { for k, v in var.map : k => v }
# }

# variable "map" {
#   type = map(string)
#   default = {
#     name    = "mahesh"
#     initial = "siddamurthi"
#   }
# }
# output "name" {
#   value = local.test
# }
