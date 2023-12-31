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

data "openstack_images_image_v2" "image_2" {
  name        = "CentOS 7.7 2020-07-07"
  most_recent = false
}

resource openstack_networking_secgroup_v2 "test" {
  name        = "test"
  description = "something changed"
}
