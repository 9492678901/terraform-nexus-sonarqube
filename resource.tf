resource "aws_instance" "sonanexus"{
	ami= "ami-02913db388613c3e1"
	instance_type= "t2.medium"
	user_data= "${file("nexusinstall.sh")}"
	key_name="abpk"
	tags = {
    		Name = "sonanexus"
  	}
}
