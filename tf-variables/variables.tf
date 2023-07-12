variable "file_name" {
  type    = string
  default = "/home/ubuntu/terraform/tf-variables/myvar.txt"
}

variable "Del1" {
  type    = string
  default = "No One understand the true meaning of Pain \"Nagato\" \n"
}

variable "file_map" {
  type = map(any)
  default = {
    itachi1 = "It's foolish to fear what we've yet to see and know. - \"Itachi Uchiha\"\n"
    itachi2 = "People live their lives bound by what they accept as correct and true. That's how they define 'reality'. But what does it mean to be 'correct' or 'true'? They're merely vague concepts. Their 'reality' may all be a mirage. Can we consider them to simply be living in their own world, shaped by their beliefs?  \"- Itachi Uchiha\"\n"
  }
}


variable "filename1" {
  type    = list(string)
  default = ["/home/ubuntu/terraform/tf-variables/itachi1.txt", "/home/ubuntu/terraform/tf-variables/itachi2.txt"]
}

variable "aws_ec2"{
  type = object({
    name = string
    instance = number
    keys = list(string)
    ami = string

  })

  default = {
    name = "test-instance"
    instance = 4
    keys = [ "test1.pem","test2.pem" ]
    ami = "ubuntu-45638df"
  }
}