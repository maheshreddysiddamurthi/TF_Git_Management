variable "repo_list" {
  type = map(object({
    description = string
    visibility  = string
  }))
  default = {
    "python_practice" = {
      description = "Python Practice for AI/ML learning"
      visibility  = "public"
    },
    "aws_practice" = {
      description = "Learing Infra creating using terraform in AWS"
      visibility  = "public"
    }
  }
}
