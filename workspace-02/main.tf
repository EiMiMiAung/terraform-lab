data "terraform_remote_state" "jp-vpc" {
  backend = "remote"
  config = {
    organization = "heartwork-jp"
    workspaces = {
      name = "master-vpc"
    }
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = data.terraform_remote_state.jp-vpc.outputs.jp-vpc_id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "Subnet1"
  }
}
