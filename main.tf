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

resource "github_repository" "java_sandbox" {
  name       = "java_sandbox"  
  visibility = var.repo_visibility  
}

resource "github_repository_collaborator" "java_sandbox_collaborator" {
  repository = github_repository.java_sandbox.name
  username   = "RVleerobertdyer"
  permission = "admin"
}

resource "github_repository" "erin_dawn" {
  name       = "erin_dawn"  
  visibility = "public"  
}

resource "github_repository_collaborator" "erin_dawn_collaborator" {
  repository = github_repository.erin_dawn.name
  username   = "RVleerobertdyer"
  permission = "admin"
}