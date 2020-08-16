output "k8s_cluster_id" {
  value = digitalocean_kubernetes_cluster.this.id
}

output "k8s_cluster_name" {
  value = digitalocean_kubernetes_cluster.this.name
}

output "k8s_cluster_host" {
  value = var.expose_config ? digitalocean_kubernetes_cluster.this.kube_config[0].host : null
}

output "k8s_cluster_cluster_ca_certificate" {
  value = var.expose_config ? digitalocean_kubernetes_cluster.this.kube_config[0].cluster_ca_certificate : null
  sensitive = true
}

output "k8s_cluster_token" {
  value = var.expose_config ? digitalocean_kubernetes_cluster.this.kube_config[0].token : null
  sensitive = true
}
