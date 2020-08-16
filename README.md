# terraform-digitalocean-kubernetes

Terraform module which creates Kubernetes resources on DigitalOcean

## Terraform versions

Terraform 0.12

## Usage

```hcl
module "kapsule" {
  source = "github.com/GekoCloud/terraform-digitalocean-kubernetes"

  name        = "my-do-cluster"
  k8s_version = "1.17"
  region      = "ams3"

  node_pools = {
    "default" = {
      "size" = "s-2vcpu-4gb"
      "min_nodes" = 1
      "max_nodes" = 2
    }
  }
}
```

## Examples

* [Simple cluster](examples/simple-cluster)
* [Complete cluster](examples/complete-cluster)

## License

Apache 2 Licensed. See LICENSE for full details.