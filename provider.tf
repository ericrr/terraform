provider "aws" {
  shared_credentials_file = "C:/Users/ericrr/.aws/credentials"
  profile                 = "mspdev"
  region                  =  var.aws_region
  
}
