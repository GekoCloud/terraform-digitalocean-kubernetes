module "complete" {
  source = "../.."

  name          = "my-complete-do-cluster"
  region        = "ams3"
  k8s_version   = "1.17"
  auto_upgrade  = true
  surge_upgrade = true
  tags          = [ "test" ]

  node_pools = {
    "default" = {
      "size" = "s-4vcpu-8gb"
      "min_nodes" = 1
      "max_nodes" = 2
    }
    "other" = {
      "size" = "s-2vcpu-2gb"
      "min_nodes" = 1
      "max_nodes" = 2
    }
  }
}
