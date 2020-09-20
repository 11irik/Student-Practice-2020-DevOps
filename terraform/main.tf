provider "aws" {
  profile = "default"
  region = "eu-central-1"
}

data "aws_route53_zone" "selected" {
  name = "ap.aws.griddynamics.net."
  private_zone = false
}

resource "aws_route53_record" "home" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name = "events.${data.aws_route53_zone.selected.name}"
  type = "A"
  ttl = "60"
  records = [
    "18.157.186.227"]
}

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}
