#Instances

resource "aws_instance" "alpha" {
  ami           = "ami-d15a75c7"
  instance_type = "t2.nano"
  subnet_id = "${aws_subnet.default.id}"
  vpc_security_group_ids = ["${aws_security_group.ssh.id}","${aws_security_group.web.id}"]
  key_name = "${var.aws_ssh_key}"
  tags {
  Name = "alpha"
  }
}
