resource "openstack_networking_secgroup_v2" "vgcn-ingress-public" {
  name        = "vgcn-ingress-public"
  description = "Allow any incoming connection"
}

resource "openstack_networking_secgroup_rule_v2" "2226f6db-dbd6-435f-86cf-fe8e898c7bc0" {
  direction         = "egress"
  ethertype         = "IPv4"
  security_group_id = "${openstack_networking_secgroup_v2.vgcn-ingress-public.id}"
}

resource "openstack_networking_secgroup_rule_v2" "35e1a542-d19e-435d-8a49-e8233f38711f" {
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = "${openstack_networking_secgroup_v2.vgcn-ingress-public.id}"
}
