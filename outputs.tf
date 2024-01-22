output "endpoint" {
  value = module.eks.cluster_endpoint
}

output "connect_to_eks" {
  value = "aws eks --region us-east-1 update-kubeconfig --name ${module.eks.cluster_name} --profile default"
}