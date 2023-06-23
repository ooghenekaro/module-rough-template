# Calling our Module in DEV Environment

module "eks-module" {
  source            = "../modules/networking"
  region            = "eu-west-2"
  vpc_cidr          = "10.0.0.0/16"
  dns_hostnames     = true
  dns_support       = true
  pub_one_cidr  = "10.0.1.0/24"
  pub_two_cidr  = "10.0.2.0/24"
  priv_one_cidr = "10.0.3.0/24"
  priv_two_cidr = "10.0.4.0/24"
  az_one            = "eu-west-2a"
  az_two            = "eu-west-2b"
  vpc_id            = "aws_vpc.eks_vpc.id"
#  subnet_ids        = module.networking.subnet_id
#  subnet_ids        = [aws_subnet.eks_pub_sub_one.id, aws_subnet.eks_pub_sub_two.id, aws_subnet.eks_priv_sub_one.id, aws_subnet.eks_priv_sub_two.id] 
#  first_pub_id      = "aws_subnet_eks_pub_sub_one.id"
#  second_pub_id     = "aws_subnet_eks_pub_sub_two.id" 
#  first_priv_id     = "aws_subnet_eks_priv_sub_one.id"
#  second_priv_id    = "aws_subnet_eks_priv_sub_two.id"  
  eks_version       = "1.26"
  ami_type          = "AL2_x86_64"
  instance_types    = ["t3.small", "t3.medium", "t3.large"]
  capacity_type     = "ON_DEMAND"

}

