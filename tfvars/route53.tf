resource "aws_route53_record" "expense" {
   for_each = aws_instance.expense
  zone_id = var.zone_id
  name    = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}" # use terraform interpolation
  type    = "A"
  ttl     = 1
  #records = local.records
  records = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]

#if records already exist
 allow_overwrite = true
}






#startswith(string, prefix)
#EX:
#> startswith("hello world", "hello")
#true

#> startswith("hello world", "world")
#false

#Here we are using startswith function condition


# db-dev.baluthripraridevops.online
# backend-dev.baluthripraridevops.online
# frontent-dev.baluthripraridevops.online

# db-prod.baluthripraridevops.online
# backend-prod.baluthripraridevops.online
# frontent-prod.baluthripraridevops.online
# baluthripraridevops.online ----> end-user-url