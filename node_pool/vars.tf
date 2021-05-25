variable "cluster" {}

variable "name" {
  type = string
}

variable "gc_zone" {
  type = string
}

variable "initial_node_count" {
  type = number
  default = 2
}

variable "max_node_count" {
  type = number
  default = 5
}

variable "k8s_machine_type" {
  type = string
}
