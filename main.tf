################################################################################################################
## Create a Route53 alias dns entry
################################################################################################################
resource "aws_route53_record" "alias_record" {
  name    = "${var.entry_name}"
  type    = "A"
  zone_id = "${var.parent_zone_id}"

  alias {
      name                   = "${var.target_dns_name}"
      zone_id                = "${var.target_zone_id}"
      evaluate_target_health = false
  }
}
