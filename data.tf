data "aws_route53_zone" "main" {
  name         = "sdevopsp25.site"
  private_zone = false
}