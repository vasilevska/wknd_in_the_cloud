resource "google_container_node_pool" "cloudweekend_np" {
  cluster = var.cluster.name
  name = var.name
  location = var.gc_zone
  initial_node_count = var.initial_node_count

  autoscaling {
    min_node_count = var.initial_node_count
    max_node_count = var.max_node_count
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    machine_type = var.k8s_machine_type
  }
}

resource "random_string" "fix" {
  length =1
}
