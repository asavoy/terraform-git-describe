terraform {
  required_version = "~> 0.12.0"
}

data "external" "git_describe" {
  program = ["${path.module}/git-describe.sh"]
}

output "description" {
  value = data.external.git_describe.result["description"]
}
