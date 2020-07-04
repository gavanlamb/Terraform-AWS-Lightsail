output "static-ip-address" {
  value = aws_lightsail_static_ip.static_ip.ip_address
}
output "private-key" {
  value = aws_lightsail_key_pair.key_pair.private_key
}