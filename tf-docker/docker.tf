terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~>2.21.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx1" {
  image = docker_image.nginx.latest
  name  = "web1"
  ports {
    internal = 80
    external = 80
  }
}