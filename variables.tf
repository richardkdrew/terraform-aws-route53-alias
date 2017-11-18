variable entry_name {
  description = "The entry name for the alias record"
}

variable parent_zone_id {
  description = "ID of the hosted zone to contain this record"
}

variable region {
	description = "e.g. eu-central-1"
}

variable target_dns_name {
    description = "DNS-name of target resource this alias record is for, e.g. blahblah.cloudfront.net"
}

variable target_zone_id {
    description = "ID of target resource this alias record is for"
}
