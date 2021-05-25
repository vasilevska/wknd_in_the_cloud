variable "gc_project" { type = string }
variable "gc_region" { type = string }

variable "gitlab_token" { type = string }
variable "gitlab_base_group" { type = string }
variable "gitlab_project_name" { type = string }
variable "gitlab_project_desc" { type = string }

variable "gc_zone" { type = string }
variable "initial_node_count" { type = number }
variable "max_node_count" { type = number }
variable "k8s_machine_type" { type = string }
variable "env_prefix" {
  type    = string
  default = ""
}
