terraform {
  cloud {

    organization = "heartwork-jp"
    hostname     = "app.terraform.io"

    workspaces {
      name = "master-vpc"
    }
  }
}