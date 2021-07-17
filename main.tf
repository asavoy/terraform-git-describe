terraform {
  required_version = ">=1"
}

data "external" "git_describe" {
  program = ["${path.module}/git-describe.sh"]
}

output "description" {
  value = data.external.git_describe.result["description"]
}
