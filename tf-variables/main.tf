resource "local_file" "test" {
  filename = var.filename1[0]
  content  = var.file_map["itachi1"]
}


resource "local_file" "vars" {
  filename = var.filename1[1]
  content  = var.file_map["itachi2"]
}

output "result" {
  value = var.file_map
}

output "aws_ec2_info" {
  value = var.aws_ec2
}