output "user_id" {
  value = local.random_suffix
}

output "random_password_output" {
  value = local.employee_password
  sensitive = true
}


output "full_Name" {
  value = var.full_name
}

output "Technologies" {
  value = var.Technologies
}

output "salary" {
  value = var.salary
}

output "position" {
  value = var.position
}

output "Company_Details" {
  value = var.Company_Details
}


