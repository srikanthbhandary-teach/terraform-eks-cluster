output "bastion_security_group_id"{
    value = aws_security_group.remote_access.id
}

output "key_pair"{
    value = module.key_pair.public_key_pem
}

output "oidc_provider_arn"{
    value = module.eks.oidc_provider_arn
}