# terraformnexus

ami id 

aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn-ami-hvm-????.??.?.????????-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text

refer :https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
