#Elastic IP

resource "aws_eip" "elastic1" {
  instance = "${aws_instance.alpha.id}"
  vpc      = true
}
