resource "aws_instance" "contenedores" {
  ami                         = "ami-04b4f1a9cf54c11d0"
  instance_type               = "t2.micro"
  subnet_id                   = var.subnet_id
  key_name                    = "lareina"
  associate_public_ip_address = true
  iam_instance_profile        = "AccessDynamo"

  vpc_security_group_ids = var.security_group_ids

  root_block_device {
    volume_size           = 12
    volume_type           = "gp3"
    iops                  = 3000
    throughput            = 125
    delete_on_termination = true
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
    instance_metadata_tags      = "disabled"
  }

  credit_specification {
    cpu_credits = "standard"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  tags = {
    Name = "CONTENEDORES"
  }
}
