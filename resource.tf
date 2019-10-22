resource "aws_instance" "sonanexus"{
	ami= "ami-00c03f7f7f2ec15c3"
	instance_type= "t2.medium"
	user_data= "${file("nexusinstall.sh")}"
	key_name="test"
	tags = {
    		Name = "sonanexus"
  	}
}
