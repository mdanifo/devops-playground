
# Playground for devops tools

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) 0.10+
- [Go](https://golang.org/doc/install) 1.12 or higher

## Kubernetes

Create a local Kubernetes cluster using the [Terraform provider for Kind](https://github.com/kyma-incubator/terraform-provider-kind)

1. Clone and build the [Terraform provider for Kind](https://github.com/kyma-incubator/terraform-provider-kind)
2. Create a local Terraform plugins directory `~/.terraform.d/plugins`
3. Copy the provider executable to the plugins directory
4. Navigate to the `kind-terraform` directory in this project
5. Initialize Terraform:
    ```bash
    terraform init
    ```
6. Plan the provisioning:
    ```bash
    terraform plan
    ```
7. Deploy the cluster:
    ```bash
    terraform apply
    ```
8. Delete the cluster:
    ```bash
    terraform destroy
    ```