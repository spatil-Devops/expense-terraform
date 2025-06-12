data "aws_route53_zone" "zone" {
  name         = "sdevopsp25.site"
  private_zone = false
}