provider "aws" {
 region = "us-west-2"  # Update with your desired region

 
}

provider "azurerm" {
  subscription_id = "1aa9e9b7-cb63-4f44-9677-d38184590405"
  features {}
}

resource "azurerm_resource_group" "ResourceGroup" {
  name = "Resourcegroupone"
  location = "eastus"
}


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucketttttss"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}