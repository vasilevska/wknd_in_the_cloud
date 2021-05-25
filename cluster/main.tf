resource "google_container_cluster" "cloudweekend" {
  location = var.gc_zone
  name = "${var.env_prefix}cloudweekend"
  remove_default_node_pool = true
  initial_node_count = 2
}

resource "random_string" "fix" {
  length =1
}

