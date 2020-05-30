
output "eks_cluster" {
  value = aws_eks_cluster.eks_cluster
}

output "eks_cluster_sg" {
  value = aws_security_group.cluster_master_sg
}
