resource "random_string" "str-test"{
    length = 15
    special = true
    override_special = "!#$%&*()-_=+{}[]<>:?"
}

output "OP"{
    value = random_string.str-test[*].result

}