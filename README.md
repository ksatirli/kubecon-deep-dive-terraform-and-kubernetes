# KubeCon Deep Dive: Managing Kubernetes with HashiCorp Terraform

> Reading material and code examples

## Table of Contents

- [KubeCon Deep Dive: Managing Kubernetes with HashiCorp Terraform](#kubecon-deep-dive-managing-kubernetes-with-hashicorp-terraform)
  - [Table of Contents](#table-of-contents)
  - [Reading material](#reading-material)
    - [Terraform Basics](#terraform-basics)
    - [Kubernetes Providers and Operators for Terraform](#kubernetes-providers-and-operators-for-terraform)
    - [Next Steps](#next-steps)
  - [Author Information](#author-information)
  - [License](#license)

## Reading material

This section is a collection of links that will help you make the most of today's session.

### Terraform Basics

* introduction to the Terraform Ecosystem: [speakerdeck.com/ksatirli/intro-to-the-terraform-ecosystem](https://speakerdeck.com/ksatirli/intro-to-the-terraform-ecosystem)
* CLI commands [terraform.io/docs/commands/index.html](https://www.terraform.io/docs/commands/index.html)
* variables and type constraints: [terraform.io/docs/configuration/variables.html](https://www.terraform.io/docs/configuration/variables.html#type-constraints)
* variable definition files: [terraform.io/docs/configuration/variables.html](https://www.terraform.io/docs/configuration/variables.html#variable-definitions-tfvars-files)
* information about Terraform State: [terraform.io/docs/state/index.html](https://www.terraform.io/docs/state/index.html)

### Kubernetes Providers and Operators for Terraform

* Kubernetes Provider for Terraform: [registry.terraform.io/providers/hashicorp/kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes)
* Kubernetes (Alpha) Provider for Terraform: [registry.terraform.io/providers/hashicorp/kubernetes-alpha](https://registry.terraform.io/providers/hashicorp/kubernetes-alpha)
* Terraform Cloud Operator for Kubernetes: [github.com/hashicorp/terraform-k8s](https://github.com/hashicorp/terraform-k8s)

### Next Steps

* See a Google Cloud Platform-specific implementation: [github.com/ksatirli/understanding-the-google-provider-for-terraform-feat-k8s](https://github.com/ksatirli/understanding-the-google-provider-for-terraform-feat-k8s)
* Learn about the Terraform Operator: [hashicorp.com/blog/creating-workspaces-with-the-hashicorp-terraform-operator-for-kubernetes](https://www.hashicorp.com/blog/creating-workspaces-with-the-hashicorp-terraform-operator-for-kubernetes)
* Learn about Terraform Code Quality: [speakerdeck.com/ksatirli/code-quality-for-terraform](https://speakerdeck.com/ksatirli/code-quality-for-terraform)

## Author Information

This repository is maintained by [Kerim Satirli](https://github.com/ksatirli), [Phil Sautter](https://github.com/redeux), [Taylor Dolezal](https://github.com/onlydole) and [Tracy P Holmes](https://github.com/tracypholmes).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
