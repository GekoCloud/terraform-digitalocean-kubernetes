output "k8s_cluster_id" {
  value = digitalocean_kubernetes_cluster.this.id
}

output "k8s_cluster_name" {
  value = digitalocean_kubernetes_cluster.this.name
}
