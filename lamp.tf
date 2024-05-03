resource "yandex_compute_instance_group" "lamp_group" {
  name                = "lamp-instance-group"
  folder_id           = var.folder_id
  service_account_id  = var.service_account_id
  instance_template {
    platform_id = "standard-v1"
    resources {
      cores  = 2
      memory = 2
    }
    boot_disk {
      initialize_params {
        image_id = "fd827b91d99psvq5fjit"
        size     = 10
      }
    }
    network_interface {
      network_id = yandex_vpc_network.vpc.id
      subnet_ids = [yandex_vpc_subnet.public_subnet.id]
    }
    metadata = {
        user-data = "${file("cloud-init.yaml")}"
    }
  }
  scale_policy {
    fixed_scale {
      size = 3
    }
  }
  allocation_policy {
    zones = ["ru-central1-a"]
  }
  deploy_policy {
    max_unavailable = 1
    max_creating    = 1
    max_expansion   = 1
    max_deleting    = 1
  }
  health_check {
    interval            = 15
    timeout             = 5
    unhealthy_threshold = 2
    healthy_threshold   = 2

    http_options {
      port = 80
      path = "/"
    }
  }
}
