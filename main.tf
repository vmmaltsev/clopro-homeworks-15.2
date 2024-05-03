resource "yandex_vpc_network" "vpc" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "public_subnet" {
  name       = var.public_subnet_name
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.public_subnet_cidr]
}

resource "yandex_vpc_subnet" "private_subnet" {
  name       = var.private_subnet_name
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.private_subnet_cidr]
}
