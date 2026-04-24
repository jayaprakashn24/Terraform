
resource "aws_instance" "ec2-linux" {

 # count = 2

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
   # Name = "Server-${count.index}"
     Name ="qa-linux"
  }
}

resource "aws_s3_bucket" "mys3" {
  bucket = var.bucket

  tags = {
    Name        = "My bucket"
    Environment = "qa"
  }
}
