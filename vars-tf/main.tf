// this is the main.tf of the Root Module for Vairables Use Examples 


// required Provider 
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

// Resource Block Docker Image
resource "docker_image" "nginx" {
  name         = "nginx:1.23.4"
  keep_locally = true    // keep image after "destroy"
}


// Resource Block Docker Caintainer
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  # here we removed the name "tutorial" for the container
  # and replace it with a call to a variable
  # name  = "tutorial"
  name = var.container_name

// port number to be Used 
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}

