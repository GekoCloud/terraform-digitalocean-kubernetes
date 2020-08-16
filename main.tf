resource "digitalocean_kubernetes_cluster" "this" {
  auto_upgrade  = var.auto_upgrade
  name          = var.name
  region        = var.region
  surge_upgrade = var.surge_upgrade
  tags          = var.tags
  version       = var.k8s_version
  vpc_uuid      = var.vpc_uuid

  node_pool {
    name       = "${var.name}-default"
    size       = var.node_pools["default"]["size"]
    auto_scale = true
    min_nodes  = var.node_pools["default"]["min_nodes"]
    max_nodes  = var.node_pools["default"]["max_nodes"]
  }
}

resource "digitalocean_kubernetes_node_pool" "this" {
  for_each = toset([
    for pool in keys(var.node_pools):
    pool if pool != "default"
  ])

  cluster_id = digitalocean_kubernetes_cluster.this.id
  name       = "${var.name}-${each.value}"
  size       = var.node_pools[each.value]["size"]
  auto_scale = true
  min_nodes  = var.node_pools[each.value]["min_nodes"]
  max_nodes  = var.node_pools[each.value]["max_nodes"]
}
