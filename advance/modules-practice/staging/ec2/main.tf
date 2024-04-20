module "web-server" {
  source = "../../modules/ec2"
  
  ami                    = "ami-015f72d56355ebc27"
  instance_type          = "t2.medium"
  tag_name               = "web-server"
  instance_min_count     = 2
  instance_max_count     = 3
  cluster_name           = "web-server"
  key_pair               = "terraform-key-pair"
  asg_availability_zones = ["ap-southeast-1a", "ap-southeast-1b"]
  elb_availability_zones = ["ap-southeast-1a", "ap-southeast-1b"]
  vpc_id                 = "vpc-00feacb6d220c5212"
  subnets                = [ "subnet-0bb70691292e64ea7", "subnet-07ce57e703be85c3b"  ]
}