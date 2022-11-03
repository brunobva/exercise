output "ExerciseInstancePubIP" {
  value = aws_instance.Exercisedev001.public_ip
}
output "ExerciseInstancePubDNS" {
  value = aws_instance.Exercisedev001.public_dns
}
output "ExerciseInstancePrivIP" {
  value = aws_instance.Exercisedev001.private_ip
}