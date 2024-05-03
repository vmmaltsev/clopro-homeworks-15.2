resource "yandex_lb_target_group" "tg" {
  name      = "tg-lamp-group"
  folder_id = var.folder_id
  region_id = var.region_id

  target {
    subnet_id = yandex_vpc_subnet.public_subnet.id
    address   = "${yandex_compute_instance_group.lamp_group.instances.0.network_interface.0.ip_address}"
  }
}

resource "yandex_lb_network_load_balancer" "nlb" {
  name      = "nlb-lamp-group"
  folder_id = var.folder_id
  region_id = "ru-central1"  # Correct region ID

  listener {
    name        = "listener-http"
    port        = 80
    target_port = 80
    protocol    = "tcp"
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.tg.id
    healthcheck {
      name = "http-check"
      http_options {
        port = 80
        path = "/"
      }
    }
  }
}
