output "eatbook-public-instance" {
  value = {
    ip = module.instance.public_instance_ips
  }
}

output "eatbook-private-instance" {
  value = {
    ip = module.instance.private_instance_ips
  }
}