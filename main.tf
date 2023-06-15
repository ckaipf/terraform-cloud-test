terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.39.0"
    }
  }
}

data "openstack_images_image_v2" "image" {
  name        = "Debian 11 2021-06-08"
  most_recent = true
}

