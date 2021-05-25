module "k8s_cluster" {
  source = "./cluster"

  gc_zone = var.gc_zone
}

module "k8s_node_pool" {
  source = "./node_pool"

  cluster = module.k8s_cluster.cluster
  name = "cloudweekend-np"
  gc_zone = var.gc_zone
  k8s_machine_type = var.k8s_machine_type
}
