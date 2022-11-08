configuration = [
  {
    "application_name" : "exerciseDev",
    "ami" : var.amiUbuntu20Lts,
    "no_of_instances" : "2",
    "instance_type" : var.ec2Type,
    "subnet_id" : "",
    "vpc_security_group_ids" : ["",""]
  },
  {
    "application_name" : "exerciseBastion",
    "ami" : "",
    "instance_type" : "t2.micro",
    "no_of_instances" : "1"
    "subnet_id" : ""
    "vpc_security_group_ids" : [""]
  },
  {
    "application_name" : "exerciseHml",
    "ami" : "",
    "instance_type" : "t2.micro",
    "no_of_instances" : "2"
    "subnet_id" : "subnet-0f4f294d8404946eb"
    "vpc_security_group_ids" : [""]
  }
  
]
