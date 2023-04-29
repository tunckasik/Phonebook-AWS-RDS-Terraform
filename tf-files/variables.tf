# GitHub
variable "github_token_path" {
  default = "~/.ssh/"
}

variable "github_token_filename" {
  default = "bronze-github-token.txt"
}

variable "github_repo_name" {
  description = "Should match with 'phonebook-app.py' line #13"
  default     = "Phonebook-AWS-RDS-Terraform"
}

# DB Server
variable "db_username" {
  description = "Should match with 'phonebook-app.py' line #19"
  default     = "phonebook_db"
}

variable "db_password" {
  description = "Should match with 'phonebook-app.py' line #20"
  default     = "Password1234"
}

variable "db_name" {
  description = "Should match with 'phonebook-app.py' line #21"
  default     = "phonebook_db"
}

# SSH
variable "ssh_key_name" {
  default = "aws-ec2-key"
}

