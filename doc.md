## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.8.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_analytics-vm"></a> [analytics-vm](#module\_analytics-vm) | git::https://github.com/udjin10/yandex_compute_instance.git | main |
| <a name="module_marketing-vm"></a> [marketing-vm](#module\_marketing-vm) | git::https://github.com/udjin10/yandex_compute_instance.git | main |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [template_file.cloudinit](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id | `string` | n/a | yes |
| <a name="input_default_cidr"></a> [default\_cidr](#input\_default\_cidr) | https://cloud.yandex.ru/docs/vpc/operations/subnet-create | `list(string)` | <pre>[<br/>  "10.0.1.0/24"<br/>]</pre> | no |
| <a name="input_default_cidr_b"></a> [default\_cidr\_b](#input\_default\_cidr\_b) | https://cloud.yandex.ru/docs/vpc/operations/subnet-create | `list(string)` | <pre>[<br/>  "10.0.2.0/24"<br/>]</pre> | no |
| <a name="input_default_zone"></a> [default\_zone](#input\_default\_zone) | https://cloud.yandex.ru/docs/overview/concepts/geo-scope | `string` | `"ru-central1-a"` | no |
| <a name="input_default_zone_b"></a> [default\_zone\_b](#input\_default\_zone\_b) | https://cloud.yandex.ru/docs/overview/concepts/geo-scope | `string` | `"ru-central1-b"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id | `string` | n/a | yes |
| <a name="input_vm_analytics"></a> [vm\_analytics](#input\_vm\_analytics) | n/a | <pre>object({<br/>    source = string<br/>    env_name = string<br/>    instance_name = string<br/>    instance_count = number<br/>    public_ip = bool<br/>    owner = string<br/>    project = string<br/>  })</pre> | <pre>{<br/>  "env_name": "stage",<br/>  "instance_count": 1,<br/>  "instance_name": "web-stage",<br/>  "owner": "markin_ai",<br/>  "project": "analytics",<br/>  "public_ip": true,<br/>  "source": "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"<br/>}</pre> | no |
| <a name="input_vm_family"></a> [vm\_family](#input\_vm\_family) | Ubuntu version | `string` | `"ubuntu-2004-lts"` | no |
| <a name="input_vm_marketing"></a> [vm\_marketing](#input\_vm\_marketing) | n/a | <pre>object({<br/>    source = string<br/>    env_name = string<br/>    instance_name = string<br/>    instance_count = number<br/>    public_ip = bool<br/>    owner = string<br/>    project = string<br/>  })</pre> | <pre>{<br/>  "env_name": "develop",<br/>  "instance_count": 1,<br/>  "instance_name": "webs",<br/>  "owner": "markin_ai",<br/>  "project": "marketing",<br/>  "public_ip": true,<br/>  "source": "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"<br/>}</pre> | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC network&subnet name | `string` | `"develop"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_out"></a> [out](#output\_out) | n/a |
