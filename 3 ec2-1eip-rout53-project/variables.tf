# Define variable of SG by using List(for each ) consept 

variable "sg_port" {
  type        = list(any)
  description = "List of port numbers"
  default     = [8080, 7064, 9090, 3608, 8081, 80, 22]
}

