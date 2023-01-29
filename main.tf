# Definir a fonte do provider
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

# Definir o provider
provider "docker" {}

# Provisionar a imagem do NGINX
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Provisionar o container do NGINX
resource "docker_container" "nginx" {
  image = docker_image.nginx.repo_digest
  name = "websrv"
  ports {
    internal = 80
    external = 8080
  }
}
