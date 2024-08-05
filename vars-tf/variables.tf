// This is the Variables File Variables or all Variables .

variable "container_name" {
  description = "Value of the name for the Docker container"
  # basic types include string, number and bool
  type        = string
  default     = "ExampleNginxContainer"

    validation {
     condition     = length(var.container_name) > 8 && substr(var.container_name, 0, 7) == "Example"
     error_message = "The container_name must begin with Example"
  }
}

variable "internal_port" {
    description = " value for Port Numbers"
    #  Data Type Set String, ect
    type       = number
    default    = 80
}

variable "external_port" {
    description = "value for Port Numbers"
    # Data Type Set String, ect
    type       = number
    default    = 2224
}
