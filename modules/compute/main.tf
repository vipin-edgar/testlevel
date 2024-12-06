resource "aws_instance" "webserver" {
   # Generate a new private key
resource "tls_private_key" "example_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create the AWS key pair using the public key from the generated private key
resource "aws_key_pair" "example_key" {
  key_name   = "example-key"  # Name of the key pair
  public_key = tls_private_key.example_key.public_key_openssh
}
# Save the private key to a local file for SSH access
resource "local_file" "private_key" {
  content  = tls_private_key.example_key.private_key_pem
  filename = "${path.module}/example-key.pem"  # The local path to save the private key
}
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [var.security_group_id]
  key_name      = aws_key_pair.example_key.key_name

  user_data = var.user_data

  tags = {
    Name        = "${var.env_name}-Webserver-AZ2"
    Environment = var.env_name
  }
}
