resource "aws_instance" "db" {

  ami                    = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-02433cc121db80627"]
  instance_type          = "lookup(var.instance_type, terraform.workspace)"

  tags = {
    Name = "db"
  }
}


#lookup(map, key, default)
