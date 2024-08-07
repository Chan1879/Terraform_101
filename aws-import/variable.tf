// 
variable "region" {
    description = "Region Location"
    type = string

    default = null
}

variable "ami_id" {
    description = "ami Id "
    type = string

    default =  null
    
}

variable "instance_type" {
    description = "the instance type"
    type = string

    default = null
}
