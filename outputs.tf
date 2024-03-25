output "bastion_security_group_id"{
    value = aws_security_group.remote_access.id
}

output "key_pair"{
    value = module.key_pair.public_key_pem
}

output "oidc_provider_arn"{
    value = module.eks.oidc_provider_arn
}

output "cluster_endpoint"{
    value = module.eks.cluster_endpoint
}

output "cluster_version"{
    value = module.eks.cluster_version
}

output "cluster_id"{
    value = module.eks.cluster_name
}

output "cluster_certificate_authority_data"{
    value = module.eks.cluster_certificate_authority_data
}