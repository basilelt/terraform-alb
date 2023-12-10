resource "aws_vpc" "main" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = var.tag_name
  }

  provisioner "local-exec" {
    command = "rm ~/.ssh/config"
    interpreter = var.host_os == "windows" ? ["Powershell", "-Command"] : ["bash", "-c"]
    on_failure = continue
  }
}