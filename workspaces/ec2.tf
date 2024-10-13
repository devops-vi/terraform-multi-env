resource "aws_instance" "wsp_ec2_instance" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = ["sg-088988091b81eae5c"]
  tags = {
    Name = "Terraform-${terraform.workspace}"
  }
}