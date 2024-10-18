provider "github" {
  token = var.github_token
}

variable "repo_name" {
  type        = string
  description = "value of the repository name"
}

variable "repo_visibility" {
  type        = string
  description = "value of the repository visibility"
}

variable "github_token" {
  type        = string
  description = "github token for repo creation"
}

resource "github_repository" "repo" {
  name       = var.repo_name
  visibility = var.repo_visibility
}

resource "github_repository_collaborator" "repo_collaborator" {
  repository = github_repository.repo.name
  username   = "RVleerobertdyer"
  permission = "admin"
}

