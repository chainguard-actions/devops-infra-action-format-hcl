variable "name" {
  description = "The name variable"
  type        = string
  default     = "example"
}

resource "null_resource" "example" {
  triggers = {
    name = var.name
  }
}
