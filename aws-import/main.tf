


resource "aws_instance" "some_resource" {
  
ami           = var.ami_id
  # size of the machine is t2.micro
  instance_type = var.instance_type
  # metadatainformation
  tags = {
    Name = "AltaResearch(SCT)"
  }
}
