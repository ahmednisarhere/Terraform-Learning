resource "local_file" "devops-file"{
    filename = "/home/ubuntu/terraform/local/mydevops.txt"
    content = "Hello Devops Engineer"
}