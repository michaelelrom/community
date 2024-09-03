
variable "message" {
  type = string
}


resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo '${var.message}'"
  }
}
