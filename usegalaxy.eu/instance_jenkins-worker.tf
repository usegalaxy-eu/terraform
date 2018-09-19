resource "openstack_compute_instance_v2" "jenkins-workers" {
  name            = "worker-${count.index}.build.internal.galaxyproject.eu"
  image_name      = "${var.jenkins_image}"
  flavor_name     = "m1.xlarge"
  key_pair        = "build-usegalaxy-eu"
  security_groups = ["egress", "ufr-ssh"]
  count           = 2

  network {
    name = "public"
  }
}