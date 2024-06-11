// https://registry.terraform.io/providers/integrations/github/latest
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.2.1"
    }
  }
}

provider "github" {
  # Configuration options
}
# Create a branch
resource "github_branch" "development" {
  repository = "GitHub-Examples"
  branch     = "sdks"
}
# Initialize terraofrm with : "terraform init"
# Next run "terraform plan" to create the branch
# terraform apply --auto-approve: applies the branch creation which replicates the main branch
# terraform destroy --auto-approve: destroys the plan (branch)
