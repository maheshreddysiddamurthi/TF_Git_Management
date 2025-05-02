repo_list = {
  "python_practice" = {
    description    = "Python Practice for AI/ML learning"
    visibility     = "public"
    repo_env_settings = {
      dev = {
        approvers     = ["maheshreddysiddamurthi"]
        deploy_branch = ["develop"]
        env_variables = ["ecr_repo"]
      }
      prod = {
        approvers     = ["maheshreddysiddamurthi"]
        deploy_branch = ["master", "main"]
      }
    },
    # file_to_commite = {
    #   Infra_plan = {
    #     file_name        = "TF_Plan.yml"
    #     path_destination = ".github/workspace/TF_Plan.yml"
    #     env_value_replace = {
    #       common_replace_values = {
    #         deploy_name = "test"
    #       }
    #     }
    #   }
    # }
  },
  "aws_practice" = {
    description    = "Learing Infra creating using terraform in AWS"
    visibility     = "public"
    default_branch = "develop"
    repo_env_settings = {
      dev = {
        approvers     = ["maheshreddysiddamurthi"]
        deploy_branch = ["develop"]
        env_variables = ["ecr_repo"]
      }
      prod = {
        approvers     = ["maheshreddysiddamurthi"]
        deploy_branch = ["master", "main"]
      }
    }
  }
}
