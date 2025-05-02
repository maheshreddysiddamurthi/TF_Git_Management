repo_list = {
  "python_practice" = {
    description    = "Python Practice for AI/ML learning"
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
    # file_to_commite = {
    #   Infra_yml_files = {
    #     filen_name       = "TF_Plan.yml"
    #     path_destination = ".github/workspace/TF_Plan.yml"
    #     env_value_replace = {
    #       deploy_name = "test"
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
    # file_to_commite = {
    #   Infra_yml_files = {
    #     filen_name       = "TF_Plan.yml"
    #     path_destination = ".github/workspace/TF_Plan.yml"
    #     env_value_replace = {
    #       deploy_name = "test"
    #     }
    #   }
    # }
  }
}
