# token variable
variable "github_token" {
  description = "github token"
}

# repo
variable "repo" {
  description = "repo"
  default     = "example"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "chavo-ops9"
}

resource "github_repository" "example" {
  name        = "${var.repo}"
  description = "My awesome codebase"
}
