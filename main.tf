# =============3 Different locations=====================

#location-1
resource "local_file" "location1"{
    filename = "${path.module}/location1/EmployeeDetails.txt"

   content = <<-EOT
   
   Employee Code: ${var.employee_code}
   Full Name: ${var.full_name}
   Stipend: ${var.salary.Stipend}
   Package: ${var.salary.CTC}
   Position: ${var.position}
   Password : ${local.employee_password}

   EOT  
}

# location-2
resource "local_file" "location2"{
    filename = "${path.module}/location2/Technologies.txt"
    content = <<-EOT
    Technologies: ${join("\n", var.Technologies)}

    EOT  
}

#location-3
resource "local_file" "location3"{
    filename = "${path.module}/location3/CompanyDetails.txt"
    content =<<-EOT

    Name: ${var.Company_Details.Name}
    Location: ${var.Company_Details.Location}
    Headquator: ${var.Company_Details.Headquater}

    EOT
}

#===============random resources=====================
resource "random_id" "random_suffix" {
  byte_length = 8
}

resource "random_password" "employee_password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

locals {
  random_suffix = random_id.random_suffix.hex
  employee_password = random_password.employee_password.result
}