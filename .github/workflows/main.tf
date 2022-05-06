terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "1.1.9"
    }
  }
  backend "remote" {
    organization = "tharada-test-org"
    workspaces {
      name = "gh-actions-demo"
    }
  }
}
provider "snowflake" {
}
resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
