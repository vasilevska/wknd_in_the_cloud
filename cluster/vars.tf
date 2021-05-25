variable "gc_zone" {
  type = string
}

variable "initial_node_count" {
  type = number
  default = 2
}

variable "env_prefix" {
  type = string
  default = ""
}
