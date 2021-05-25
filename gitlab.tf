data "gitlab_group" "base" {
  full_path = var.gitlab_base_group
}

resource "gitlab_project" "kiwi_cloudweekend" {
  name = var.gitlab_project_name
  description = var.gitlab_project_desc
  namespace_id = data.gitlab_group.base.id
  default_branch = "master"

  lifecycle {
    prevent_destroy = true
  }
}
