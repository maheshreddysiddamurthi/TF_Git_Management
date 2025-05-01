variable "repo_list" {
  type = map(object({
    description    = string
    visibility     = optional(string, "private")
    default_branch = optional(string, "master")
    repo_env_settings = map(object({
      approvers     = optional(list(string), [])
      deploy_branch = optional(list(string), [])
      env_variables = optional(list(string), [])
    }))
    file_to_commite = map(object({
      filen_name       = optional(string, "")
      path_destination = optional(string, "")
      env_value_replace = map(object({
        deploy_name = optional(string, "")
      }))
    }))
  }))
}
