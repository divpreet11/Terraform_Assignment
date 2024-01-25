variable "employee_code"{
    description = "Enter employee code: "
    type = number
    # default = 719
}

variable "full_name" {
    description = "Enter your Name: "
    type = string
    default = "unknown"
}

variable "Technologies" {
    description = "Enter the technologis you are learning"
    type = list(string)
    default = ["AWS", "Terraform", "Window Administrator", "Python"]
}

variable "salary" {
  description = "Salary: "
  type = map(number)
  default = {
    "Stipend" = 0,
    "CTC" = 0
  }
}

variable "position" {
  description = "Position: "
  type = string
  default = "unknown"
}


variable "Company_Details" {
  description = "Company Details"
  type = object({
    Name = string
    Location = string
    Headquater = string
  })
  default = {
    Name = "cloudEQ"
    Location = "Chandigarh"
    Headquater = "USA"
  }
}

