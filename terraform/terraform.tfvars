resource "random_id" "id" {
  byte_length = 8
}

rgname   = "github-action-demo"
location = "westeurope"
sname    = "newsa-${random_id.id.hex}"
