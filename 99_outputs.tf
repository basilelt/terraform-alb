#output "instance1_ip" {
#  value = aws_instance.instance1.public_ip
#}
#output "instance2_ip" {
#  value = aws_instance.instance2.public_ip
#}

#output "password" {
#  value = aws_iam_user.student1.foo
#}

output "public_ips" {
  #value = aws_instance.my_app_eg1[*].public_ip
 # value = {for instance in aws_instance.my_app_eg1: instance.name => instance.public_ip}
#  value = element([for instance in values(aws_instance.my_app_eg1) : instance.public_ip], 0)
  value = [for instance in values(aws_instance.my_app_eg1) : instance.public_ip]
}


output "public_dns" {
  value = aws_lb.my_app_eg1.dns_name
}

