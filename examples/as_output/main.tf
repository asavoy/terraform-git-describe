terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
  required_version = ">=1"
}

module "git_describe" {
  source = "../.."
}

output "description" {
  value = module.git_describe.description
}
