output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_ids" {
  value = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.networking.private_subnet_ids
}
output "public_sg_id" {
  value = module.security_groups.public_sg_id
}

output "private_sg_id" {
  value = module.security_groups.private_sg_id
}
output "webserver_instance_id" {
  value = module.compute.webserver_instance_id
}

output "webserver_public_ip" {
  value = module.compute.webserver_public_ip
}
