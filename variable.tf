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

variable "token" {
  type    = string
  default = "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"
}
