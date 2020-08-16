module "simple" {
  source = "../.."

  name          = "my-simple-do-cluster"
  region        = "ams3"
  k8s_version   = "1.17"
  node_pools = {
    "default" = {
      "size" = "s-2vcpu-4gb"
      "min_nodes" = 1
      "max_nodes" = 2
    }
  }
}
