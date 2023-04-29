## Phonebook App Deployment on AWS

This repository contains the Terraform code to deploy a Phonebook App (a web application with Flask) on AWS. The application is composed of an Amazon RDS instance running MySQL, an Auto Scaling Group of EC2 instances running the Phonebook App and an Application Load Balancer that routes incoming traffic to the EC2 instances.

**Prerequisites**
Before deploying this application, you must have the following:

- An AWS account with appropriate permissions to create the necessary resources
- Terraform installed on your local machine
- A GitHub account and its token

**Deployment**
To deploy this application, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the cloned repository on your local machine.
3. Create a new branch for your changes.
4. Update the `variables.tf` file with your desired values for the variables.
5. Run `terraform init` to initialize the working directory.
6. Run `terraform plan` to preview the changes that Terraform will make.
7. If the plan looks good, run `terraform apply` to create the resources on AWS.
8. After the resources are created, you will see the output of the Application Load Balancer URL. Open the URL in a web browser to see the Phonebook App in action.
9. When you are finished, run `terraform destroy` to destroy the resources and clean up your AWS account.

**Files**
- `main.tf`: This file contains the main Terraform code to create the AWS resources.
- `variables.tf`: This file contains the variables used in the Terraform code.
- `user-data.sh`: This script is passed to the EC2 instances as user data to install and configure the Phonebook App on the instances.
- `outputs.tf`: This file contains the output values that are displayed after running terraform apply.
- `provider.tf`: This file contains the provider configuration for AWS.
- `sec-gr.tf`: This file contains the security group rules for the EC2 instances.
 ## Notes

 Application needs the endpoint of the `dbserver`. We are using Terraform to create a file on GitHub and reading the `dbserver endpoint` from this file within the application.
We are providing the `repo name` to the `user-data.sh` file dynamically.