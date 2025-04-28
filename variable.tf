variable "repo_list" {
  type = map(object({
    description = string
    visibility  = optional(string, "private")
  }))
  # default = {
  #   "python_practice" = {
  #     description = "Python Practice for AI/ML learning"
  #     visibility  = "public"
  #   },
  #   "aws_practice" = {
  #     description = "Learing Infra creating using terraform in AWS"
  #     visibility  = "public"
  #   },
  #   "test" = {
  #     description = "Learing Infra creating using terraform in AWS"
  #     visibility  = "public"
  #   }
  # }
}


# variable "repo_list" {
#   type = map(object({
#     description = string
#     visibility  = string
#     file_to_map = map(object({
#       path        = optional(string, "")
#       destination = string
#     }))
#   }))

#   default = {
#     "python_practice" = {
#       description = "Python Practice for AI/ML learning"
#       visibility  = "public"
#       file_to_map = {
#         "readme" = {
#           path        = "README.md"
#           destination = "/docs/README.md"
#         }
#         "config" = {
#           path        = "config.json"
#           destination = "/config/config.json"
#         }
#       }
#     },
#     "aws_practice" = {
#       description = "Learning Infra creation using Terraform in AWS"
#       visibility  = "public"
#       file_to_map = {
#         "main_tf" = {
#           path        = "infra/main.tf"
#           destination = "/terraform/main.tf"
#         }
#       }
#     }
#   }
# }
