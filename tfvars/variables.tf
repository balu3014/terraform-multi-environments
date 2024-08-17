variable "instance_names" {
  type = map(string)
  default = {
    # db-dev = "t3.micro"
    # backend-dev = "t2.micro"
    # frontend-dev = "t2.micro"
  }
}


variable "environment" {
  # default = "dev"
  
}
   variable "common_tags"{
    type = map
    default = {
        project = "expense"
        terraform = "true"
    }
   }


  
#r53-variables

 variable "zone_id" {
   default = "Z0046586142IG4Z9PCAT0"
 }

variable "domain_name" {
  default = "baluthripraridevops.online"
}