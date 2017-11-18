# terraform-aws-route53-alias
Terraform module to define a domain name (e.g. `example.com`) as a DNS ALIAS record

## Usage

#### Create s3 website bucket

```hcl
module dns {
  source = "git::https://github.com/richardkdrew/terraform-aws-route53-alias.git?ref=master"

  entry_name                        = "${var.domain}"
  parent_zone_id                    = "${var.hosted_zone_id}"
  region                            = "${var.region}"
  target_dns_name                   = "${module.cdn.cdn_hostname}"
  target_zone_id                    = "${module.cdn.cdn_zone_id}"
}
```

## Variables

|  Name                              |  Default       |  Description                                                                        |  Required |
|:-----------------------------------|:--------------:|:------------------------------------------------------------------------------------|:---------:|
|  `entry_name`                      |  ``            |  The entry name for the alias record                                                |  Yes      |
|  `parent_zone_id`                  |  ``            |  ID of the hosted zone to contain this record                                       |  Yes      |
|  `region`                          |  ``            |  e.g. eu-central-1                                                                  |  No       |
|  `target_dns_name`                 |  ``            |  DNS-name of target resource this alias record is for, e.g. example.cloudfront.net |  No       |
|  `target_zone_id`                  |  ``            |  ID of target resource this alias record is for                                     |  No       |
