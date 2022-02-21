variable "rgname" {
    description = "Resource Group Name"
    default     = "rgdemo"
    type        = string
}
variable "location" {
    description = "Azure location"
    default     = "westeurope"
    type        = string  
}
variable "sname" {
  description = "Azure Storage Account"
  type        = string
}
