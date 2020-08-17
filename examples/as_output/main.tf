terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

module "git_describe" {
  source = "../.."
}

output "description" {
  value = module.git_describe.description
}
