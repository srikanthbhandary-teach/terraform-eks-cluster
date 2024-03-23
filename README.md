### Variables

| Variable Name                  | Type           | Default Value | Description                                     |
|--------------------------------|----------------|---------------|-------------------------------------------------|
| cluster_name                   | string         |               | Name of the cluster                             |
| tags                           | map(string)    |               | Tags for the cluster resources                  |
| cluster_version                | string         | "1.29"        | Version of the cluster                          |
| cluster_endpoint_private_access| bool           | true          | Whether the cluster has private endpoint access |
| cluster_endpoint_public_access | bool           | true          | Whether the cluster has public endpoint access  |
| vpc_id                         | string         |               | ID of the VPC where the cluster will be deployed|
| private_subnet_ids             | list(string)   |               | IDs of private subnets within the VPC           |
| ami_type                       | string         | "AL2_x86_64"  | Type of AMI to use for the cluster nodes        |
| disk_size                      | string         | "50"          | Size of the disk for each node in GB            |
| instance_types                 | list(string)   | ["t3.medium"] | Instance types for the cluster nodes            |
| capacity_type                  | string         | "SPOT"        | Type of capacity for the cluster nodes          |
| min_size                       | number         | 1             | Minimum number of nodes in the cluster          |
| max_size                       | number         | 3             | Maximum number of nodes in the cluster          |
| desired_size                   | number         | 1             | Desired number of nodes in the cluster          |
| region                         | string         | "eu-north-1"  | AWS region where the cluster will be deployed   |

### Outputs

| Output Name          | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| bastion_security_group_id | ID of the AWS security group for remote access.                              |
| key_pair             | Public key PEM value for SSH key pair.                                      |
| oidc_provider_arn    | ARN of the OIDC provider for Amazon EKS.    
