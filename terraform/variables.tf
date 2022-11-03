variable "region" {
  default = "us-east-1"
}
variable "availabilityZone" {
  default = "us-east-1a"
}
variable "instanceTenancy" {
  default = "default"
}
variable "dnsSupport" {
  default = true
}
variable "dnsHostNames" {
  default = true
}
variable "ExerciseVpcCIDR" {
  default = "10.0.16.0/22"
}
variable "ExercisePubCIDR" {
  default = "10.0.17.0/28"
}
variable "ExercisePrivCIDR" {
  default = "10.0.18.0/28"
}
variable "publicdestCIDRblock" {
  default = "0.0.0.0/0"
}
variable "localdestCIDRblock" {
  default = "10.0.0.0/16"
}

variable "mapPublicIP" {
  default = true
}

variable "ExerciseIP" {
  default = "187.95.16.26/32"
}

variable "ec2Type" {
  default = "t2.micro"
}
variable "amiUbuntu20Lts" {
  default = "ami-08d4ac5b634553e16"
}
variable "sshExerciseKey" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz7z5mIJjGmEprif6onnFcp0Exfw8H0b7fPRibBlfnv87EjXFdwgvpTueEILDvvuY38DlW7L0AAmU4KjEBaBFfLjbtBboAUMOCRNpSF5ccg6oWAEM5joQoHjJzQjB9LjAINMCPi9bLJ+phbRKc+fNTVzuvjv2itRNf48gFW/wFg9p3JDGmJO4MdjHzd9oMnGIxkg/iDJhlzh3onnWMVC78XK22dgzw1rNmbBZU7TanOGXfK+S+1hdsLS5JHLMykQs8JzxWK8mbKTaBKFJu2O4eDN/DXjx4jG2iZjTWTdrV+Fq0eVid2aUUSZJkeNBXIMc6W1d568lFHDwOVA3VVmFgh5NzM2P40aI4w99MXnV9b3CMn4omv1YzQKB5MZGRkb4+sK4aFXuHfHVKJt/FwSKvqpEElSSyyqOr+sMDDU3HwgKSVh2hl+MUFNltvtMSZ+tspIxLJ/nCAMP3i2uqQcfpBS4SlBOiHUujQr/idJuZNYRdm69bfGoLKMTqR8eFR0vMjFY1Oqps2gaSZLOfap/pO81DccxeMU7n1T9Ok9bwFMLbd+q0ztWMJoj6edW9twC9yHg1uu9zzuek7dg4v838dm1bMpX6AY5Ia9irX3BAcVDxzbEWqmQa2Wy7u5rotZrwqvK7Vk3uGTBsS7COQFomwM/avjZkCpEbnU2GEZPR2w== bruno@Exerciseconsultoria.com.br"
}